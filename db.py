# db.py

# función para conectarte a MySQL (Debemos haber instalado con pip install pymysql)


import pymysql
from config import DB_CONFIG

def get_db_connection():
    """Establece y devuelve una conexión a la base de datos MySQL."""
    return pymysql.connect(
        host=DB_CONFIG["host"],
        port=DB_CONFIG["port"],
        user=DB_CONFIG["user"],
        password=DB_CONFIG["password"],
        database=DB_CONFIG["database"],
        cursorclass=pymysql.cursors.DictCursor  # Devuelve resultados como diccionarios
    )
