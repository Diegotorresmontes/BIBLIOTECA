from flask import Flask, render_template, request, session, redirect, url_for
import pymysql
from werkzeug.security import generate_password_hash, check_password_hash
from db import get_db_connection
from flask_wtf import FlaskForm
from wtforms import StringField, PasswordField, SubmitField
from wtforms.validators import DataRequired, Email, Length

class LoginForm(FlaskForm):
    email = StringField('Correo electrónico', validators=[DataRequired(), Email()])
    password = PasswordField('Contraseña', validators=[DataRequired(), Length(min=6)])
    submit = SubmitField('Iniciar sesión')


app = Flask(__name__)

@app.route('/')
def inicio():
    return render_template('index.html')

@app.route('/autores')
def autores():
    connection = get_db_connection()
    with connection.cursor() as cursor:
        cursor.execute("SELECT * FROM autores")
        autores = cursor.fetchall()
    connection.close()
    return render_template('autores.html', autores=autores)

@app.route('/libros')
def libros():
    connection = get_db_connection()
    with connection.cursor() as cursor:
        cursor.execute("SELECT libros.*, autores.nombre AS autor_nombre FROM libros JOIN autores ON libros.autor_id = autores.id")
        libros = cursor.fetchall()
    connection.close()
    return render_template('libros.html', libros=libros)

@app.route('/usuarios')
def usuarios():
    connection = get_db_connection()
    with connection.cursor() as cursor:
        cursor.execute("SELECT * FROM usuarios")
        usuarios = cursor.fetchall()
    connection.close()
    return render_template('usuarios.html', usuarios=usuarios)

@app.route('/prestamos')
def prestamos():
    connection = get_db_connection()
    with connection.cursor() as cursor:
        cursor.execute("SELECT prestamos.*, usuarios.username, libros.titulo FROM prestamos JOIN usuarios ON prestamos.usuario_id = usuarios.id JOIN libros ON prestamos.libro_id = libros.id")
        prestamos = cursor.fetchall()
    connection.close()
    return render_template('prestamos.html', prestamos=prestamos)

@app.route('/criticas')
def criticas():
    connection = get_db_connection()
    with connection.cursor() as cursor:
        cursor.execute("SELECT criticas.*, usuarios.username, libros.titulo FROM criticas JOIN usuarios ON criticas.usuario_id = usuarios.id JOIN libros ON criticas.libro_id = libros.id")
        criticas = cursor.fetchall()
    connection.close()
    return render_template('criticas.html', criticas=criticas)

if __name__ == '__main__':
    app.run(debug=True)