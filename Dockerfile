# Usa una imagen oficial de Python 3.11
FROM python:3.11
# Establecer el directorio de trabajo en el contenedor
WORKDIR /app
# Copiar los archivos del proyecto al contenedor
COPY . .
# Instalar dependencias del proyecto
RUN pip install --no-cache-dir Flask PyMySQL Werkzeug Flask-WTF
# Exponer el puerto 5000 para Flask
EXPOSE 5000
# Comando para ejecutar la aplicación
CMD ["python", "app.py"]
