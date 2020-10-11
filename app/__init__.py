from flask import Flask
# from flask_mysqldb import MySQL
app = Flask(__name__)
app.secret_key = "Secret Key"
 

from app import user_views
from app import admin_views
from app import publik_views