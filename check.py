import pymysql

conn = pymysql.connect(
    host="database-1.cnzwawgloreg.us-east-1.rds.amazonaws.com",
    user="admin",
    password="admin123",
    database="calculator_db",
    cursorclass=pymysql.cursors.DictCursor
)

with conn.cursor() as cursor:
    cursor.execute("SELECT * FROM results ORDER BY id DESC LIMIT 10")
    rows = cursor.fetchall()
    for row in rows:
        print(row)

conn.close()

