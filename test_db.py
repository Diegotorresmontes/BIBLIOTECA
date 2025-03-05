# test_db.py

#script test_db.py para verificar que todo funciona
# hay que ejecutar python test_db.py



from db import get_db_connection

try:
    connection = get_db_connection()
    with connection.cursor() as cursor:
        cursor.execute("SELECT DATABASE();")
        db_name = cursor.fetchone()
    print(f"Conectado a la base de datos: {db_name['DATABASE()']}")
finally:
    connection.close()

