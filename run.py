from app import app

# app.config['MYSQL_HOST'] = 'localhost'
# app.config['MYSQL_USER'] = 'root'
# app.config['MYSQL_PASSWORD'] = ''
# app.config['MYSQL_DB'] = 'test'
# mysql = MySQL(app)
#mysql.init_app(app)

# @app.route('/')
# def index():
# 	# cur = mysql.connection.cursor()
# 	# #cur = mysql.get_db.cursor()
# 	# cur.execute("SELECT * FROM flaskdb")
# 	# rv = cur.fetchall()
# 	# cur.close()
	
# 	# return render_template('home.html', computers=rv)
#     return "Hello Yusuf hahah"

if __name__=='__main__':
	app.run(debug=True)

# $env:FLASK_APP="run.py"
# $env:FLASK_ENV="development"
# $env:FLASK_ENV="production"