from app import app
from flask import render_template

@app.route('/user/login')
def user_login():
    return render_template('user/u_login.html')

@app.route('/user')
def user():
    return render_template('user/u_dashboard.html')

@app.route('/user/about')
def user_about():
    return "Hello About"