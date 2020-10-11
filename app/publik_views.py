from app import app
# from app import admin_views
from flask import render_template, session, redirect, url_for

@app.route('/')
def publik():
    if 'loggedin' in session:
        return redirect(url_for('admin_dashboard'))
    return render_template('public/p_home.html')

@app.route('/public/about')
def publik_about():
    return "Hello About"