# Melakukan import mysql connector
import mysql.connector

# Melakukan percobaan koneksi
conn = mysql.connector.connect(
  host="localhost",
  port=8889,
  username="root",
  password="root",
  database="vix_rakamin_academy",
)

# Membuat object cursor sebagai penanda
cursor = conn.cursor()

# Deklarasi SQL Query untuk memasukkan record ke DB (KARYAWAN)
sql = ("INSERT INTO KARYAWAN (FIRST_NAME, LAST_NAME, AGE, SEX, INCOME) VALUES (%s, %s, %s, %s, %s)")
values = ("Aditya", "Ricki", 23, "Man", 5000)

try:
  # Eksekusi SQL command
  cursor.execute(sql, values)
  
  # Melakukan perubahan (commit) pada DB
  conn.commit()
  print("Data saved")
except Exception as e:
  # Roll Back apabila ada issue
  conn.rollback()
  print(e)

# Menutup koneksi
conn.close()
