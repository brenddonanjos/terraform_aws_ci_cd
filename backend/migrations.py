# migrations.py

from flask_mysqldb import MySQL
from flask import Flask

def create_people_table(app: Flask):
    with app.app_context():
        mysql = MySQL(app)
        conn = mysql.connection
        cursor = conn.cursor()
        
        # SQL para criar a tabela se não existir
        cursor.execute("""
        CREATE TABLE IF NOT EXISTS People (
            id INT PRIMARY KEY AUTO_INCREMENT,
            name VARCHAR(100),
            age INT,
            cell_phone VARCHAR(15)
        );
        """)
        
        conn.commit()
        cursor.close()
