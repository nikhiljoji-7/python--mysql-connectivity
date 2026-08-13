# mysql-connector-python

import mysql.connector
connector = mysql.connector.connect(
            host = "localhost",         # Server ip or host name
            user = "root",              # Your mysql username
            password = "root",          # Your MySQL password
            database = "sample2"        # The specific datavase to use
)
if connector.is_connected():
    print("database connected ")

cursor = connector.cursor()
# cursor.execute("select * from sample")
# rows=cursor.fetchall()
# print(rows)
# for i in rows:
#     print(i)

cursor.execute("select location,count(*) from sample group by location")
rows = cursor.fetchall()
for i in rows:
    print(i)

cursor.close()
connector.close()