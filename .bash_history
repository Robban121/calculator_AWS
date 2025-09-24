clear
sudo apt update
sudo yum update -y
ping 8.8.8.8
sudo yum update -y
aws ec2 describe-route-tables --route-table-ids rtb-077574f81d89bee36
ping 8.8.8.8
sudo yum update -y
sudo yum install python3 -y
python3 --version
pip3 --version
sudo yum install python3-pip -y
pip3 install flask pymysql
clear
vi main.py
ls
python3 main.py
vi main.py
python3 main.py
clear
python3 main.py
vi main.py
python3 main.py
# Install flask-cors
pip3 install flask-cors --user
python3 main.py
vi main.py
python3 main.py
clear
sudo iptables -L -n
curl http://127.0.0.1:5050/health
python3 main.py
python3 main.py -d
nohup python main.py &
nohup python3 main.py &
curl http://127.0.0.1:5050/health
curl http://calcALB-214915425.us-east-1.elb.amazonaws.com/health
nohup python3 main.py &
ps
aws ec2 describe-security-groups --group-ids sgr-09b842c0609eddef9 --query "SecurityGroups[*].IpPermissions"
curl http://172.31.50.6:5050/health
nohup python3 main.py &
sudo ss -lntp | grep 5050
nohup python3 main.py &
ps
sudo ss -lntp | grep 5050
sudo yum install mysql -y  # Amazon Linux
sudo yum install mysql-client -y
sudo dnf install mysql -y
pip3 install pymysql
# or
pip3 install mysql-connector-python
ls
vi main.py 
vi create_db.py
python3 create_db.py 
vi main.py 
nohup python3 main.py &
ps
nohup python3 main.py &
ps
sudo ss -lntp | grep 5050
vi check.py
python3 check.py
vi check.py
python3 check.py
mysql -h database-1.cnzwawgloreg.us-east-1.rds.amazonaws.com -u admin -p -e "USE calculator_db; SELECT * FROM results ORDER BY id DESC LIMIT 5;"
vi main.py
tail -f nohup.out
vi main.py
pkill -f main.py
nohup python3 main.py &
curl -X POST http://calcALB-214915425.us-east-1.elb.amazonaws.com/saveSum   -H "Content-Type: application/json"   -d '{"sum_value": 10}'
mysql -h database-1.cnzwawgloreg.us-east-1.rds.amazonaws.com -u admin -p
sudo dnf install mysql -y
sudo dnf install mysql-community-client -y
sudo dnf install mariadb -y
sudo dnf module list mariadb
sudo dnf install -y https://repo.mysql.com/mysql80-community-release-el9-1.noarch.rpm
sudo dnf install -y mysql
mysql -h database-1.cnzwawgloreg.us-east-1.rds.amazonaws.com -u admin -p
sudo dnf remove mysql-community-client mysql-community-client-plugins mysql-community-common mysql-community-libs -y
sudo dnf install --nogpgcheck -y mysql-community-client
mysql --version
mysql -h database-1.cnzwawgloreg.us-east-1.rds.amazonaws.com -u admin -p
curl -X POST http://calcALB-214915425.us-east-1.elb.amazonaws.com/saveSum   -H "Content-Type: application/json"   -d '{"sum_value": 156}'
mysql -h database-1.cnzwawgloreg.us-east-1.rds.amazonaws.com -u admin -p
ls
vi create_db.py 
python3 main.py
python3 create_db.py 
mysql -h database-1.cnzwawgloreg.us-east-1.rds.amazonaws.com -u admin -p
nohup python3 main.py &
mysql -h database-1.cnzwawgloreg.us-east-1.rds.amazonaws.com -u admin -p
vi main.py 
mysql -h database-1.cnzwawgloreg.us-east-1.rds.amazonaws.com -u admin -p
vi main.py 
nohup python3 main.py &
mysql -h database-1.cnzwawgloreg.us-east-1.rds.amazonaws.com -u admin -p
curl -X POST http://calcALB-214915425.us-east-1.elb.amazonaws.com/saveSum   -H "Content-Type: application/json"   -d '{"sum_value": 156}'
mysql -h database-1.cnzwawgloreg.us-east-1.rds.amazonaws.com -u admin -p
ls
vi main.py
