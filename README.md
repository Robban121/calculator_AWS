	1. Creating VPC with 1 public subnet and 1 private subnet. Backend and Database will be residing in the private subnet. 
	2. For VPC the CIDR of VPC and subnet should be taken into account .For example in our case the VPC cidr is 
172.31.0.0/16 so ideally based on the servers we are planning to provision we can have 
172.31.50.0/16 - for public subnet
172.31.100.0/16 - for private subnet
	3. Provisioning of 3 servers - 1 frontend serving html through Nginx, 1 backend having the app logic, 1 bastion host in public subnet to enable internet access for backend server.
Backend server needs internet access during setup as it will need to update packages from linux repositories, install dependencies from internet
	4. Once the servers are up and running perform following steps
		a. For frontend install nginx with command sudo apt install nginx , go to the directory of nginx html file and replace with your frontend html code. The nginx directory is placed at "/usr/share/nginx/html/"
		b. For backend install python, pip install and all the related dependencies, this cannot be done directly. First we need to login to bastion host using public IP.
			i. ssh -i my-ec2-key.pem ec2-user@100.27.213.82, here we need to copy the key pair which we will need to ssh into backend server
			ii. Below is the keypair on bastion host which is Solar_systemKP which will be used to ssh into backend

			iii. 
			iv. After this ssh into backend server using private IP .ssh -i Solar_systemKP.pem ec2-user@172.31.50.6. Note from bastion host we need to ssh using private IP
    
	5. Security group setup will be as follows
		a. NACLs should not explicitly restrict access from any IP.
		b. Front end should allow inbound from internet ( 0.0.0.0 )
		c. ALB should be allowing inbound from internet because -> So when the user clicks the button, the browser executes: It goes directly from the browser → ALB DNS name
		d. Backend SG should be allowing inbound from alb SG.
			i. 
			ii. RDS security group should allow traffic from backend SG

			iii. 
	6. For ALB, we need to create TG with instances of backend and register them as targets on port where flask app is running on ( 5050 in our case). Once targets are registered they should be in healthy status.
Note the health check path provided in TG should be same in our backend code ( eg /health)
	
	
	
	7. Some commands to check and trouble shoot
		a. mysql -h database-1.cnzwawgloreg.us-east-1.rds.amazonaws.com -u admin -p
		b. curl -X POST http://calcALB-214915425.us-east-1.elb.amazonaws.com/saveSum   -H "Content-Type: application/json"   -d '{"sum_value": 156}'
		c. Use this endpoint to test via postman

		d. 
<img width="2006" height="3884" alt="image" src="https://github.com/user-attachments/assets/bae109fb-12da-4e3f-aa72-425db8e12a59" />
