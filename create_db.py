import pymysql

# RDS connection details
RDS_HOST = "database-1.cnzwawgloreg.us-east-1.rds.amazonaws.com"  # replace with your RDS endpoint
RDS_USER = "admin"  # your master username
RDS_PASSWORD = "admin123"  # your master password

# Database and table names
DB_NAME = "calculator_db"
TABLE_NAME = "results"

try:
    # Connect to RDS (no database yet)
    conn = pymysql.connect(
        host=RDS_HOST,
        user=RDS_USER,
        password=RDS_PASSWORD,
        cursorclass=pymysql.cursors.DictCursor
    )
    cursor = conn.cursor()

    # Create database if not exists
    cursor.execute(f"CREATE DATABASE IF NOT EXISTS {DB_NAME}")
    print(f"Database '{DB_NAME}' created or already exists.")

    # Select the database
    cursor.execute(f"USE {DB_NAME}")

    # Create results table
    cursor.execute(f"""
        CREATE TABLE IF NOT EXISTS {TABLE_NAME} (
            id INT AUTO_INCREMENT PRIMARY KEY,
            operation VARCHAR(20),
            value FLOAT,
            created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        )
    """)
    print(f"Table '{TABLE_NAME}' created or already exists.")

except Exception as e:
    print("Error:", e)

finally:
    cursor.close()
    conn.close()
    print("Connection closed.")

