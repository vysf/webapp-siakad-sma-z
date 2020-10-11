from app import app
from flask import Flask, render_template, request, url_for, redirect, request, flash, session
from flask_mysqldb import MySQL, MySQLdb
import bcrypt
import re

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] ='root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'latihanflask'
# app.config['MYSQL_CURSORCLASS'] = 'DictCursor'
mysql = MySQL(app)

@app.route('/admin/register', methods=['GET','POST'])
def admin_register():
    if 'loggedin' not in session:
        if request.method == "POST" and 'username' in request.form and 'nip' in request.form and 'pswrd' in request.form:
            NAMA = request.form['username']
            NIP = request.form["nip"]
            PASS = request.form["pswrd"]
            # jika akun sudah pernah terdaftar dan masih ada
            cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
            cur.execute("SELECT * FROM db_guru WHERE nip_guru=%s",(NIP,))
            acc = cur.fetchone()
            # jika akun ada, munculkan eror dan validation check
            if acc:
                flash("Akun sudah terdaftar atau hubungi admin", category='info')
            elif not NAMA or not NIP or not PASS:
                flash("Form tidak boleh kosong!", category='danger')
            elif not re.match(r"[0-9]+", NIP):
                flash("NIP hanya angka", category='info')
            elif not re.match(r"[A-Za-z0-9]+", PASS):
                flash("Panjang password maksimal 15 karakter dan mengandung huruf dan angka", category='info')
            else:
                # jika akun tidak ada dan form validasi telah terisi, masukan akun baru ke database
                cur.execute("INSERT db_guru(nip_guru, nama_guru, pass_guru) VALUES(%s, %s, %s)",(NIP, NAMA, PASS))
                mysql.connection.commit()
                cur.close()
                flash("Selamat! Akun berhasi dibuat", category='success')
                return redirect(url_for('admin_login'))
        elif request.method == "POST" and 'username' not in request.form and 'nip' not in request.form and 'pswrd' not in request.form:
            flash("Form tidak boleh kosong!!", category='danger')
        return render_template('admin/a_register.html')
    else:
        return redirect(url_for('admin_dashboard'))

@app.route('/admin/login', methods=['GET','POST'])
def admin_login():
    if request.method == "POST" and 'nip' in  request.form and 'pswrd' in request.form:
        NIP = request.form["nip"]
        PASS = request.form["pswrd"]

        cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cur.execute("SELECT * FROM db_guru WHERE nip_guru=%s AND pass_guru=%s", (NIP,PASS))
        acc = cur.fetchone()

        if acc:
            session['loggedin'] = True
            session['id'] = acc['id_guru']
            session['username'] = acc['nama_guru']
            return redirect(url_for('admin_dashboard'))
        else:
            flash("NIP atau Password salah", category="danger")
            return render_template('admin/a_login.html')
    else:
        if 'loggedin' in session:
            return redirect(url_for('admin_dashboard'))

    return render_template('admin/a_login.html')

@app.route('/admin/logout/<string:id>', methods=['GET','POST'])
def admin_logut(id):
    session.pop('loggedin',None)
    session.pop(id, None)
    session.pop('username', None)
    return redirect(url_for('publik'))

@app.route('/admin/profile/<string:username>')
def admin_profile(username):
    if 'loggedin' in session:
        cur = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cur.execute("SELECT * FROM db_guru WHERE id_guru=%s", (session['id'],))
        acc = cur.fetchone()
        return render_template("admin/a_profile.html",acc=acc ,menu = 'profile1')
    return redirect(url_for('admin_login'))

@app.route('/admin/dashboard')
def admin_dashboard():
    if 'loggedin' in session:
        return render_template("admin/a_dashboard.html", menu = 'dashboard1')
    return redirect(url_for('publik'))


# tampilkan barang
@app.route('/admin/barang')
def admin_barang():
    if 'loggedin' in session:
        cur = mysql.connection.cursor()
        cur.execute('SELECT * FROM db_pelajaran Where id_guru = %s', (session['id'],))
        mapel = cur.fetchall()
        return render_template("admin/a_databarang.html", menu = 'barang1', mapels=mapel)
    return redirect(url_for('admin_login'))

# tambah barang
@app.route('/admin/barang/tambah', methods=["POST"])
def admin_tambah_barang():
    kode = request.form['kode']
    matapelajaran = request.form['matapelajaran']
    kelas = request.form['kelas']
    id = session["id"]

    cur = mysql.connection.cursor()
    cur.execute("INSERT db_pelajaran(kode_pelajaran, nama_pelajaran, kelas, id_guru) VALUES(%s, %s, %s, %s)",(kode,matapelajaran,kelas,id))

    mysql.connection.commit()
    cur.close()
    flash("menambah", category=("success","check"))
    return redirect(url_for("admin_barang"))

# update barang
@app.route('/admin/barang/update', methods=['POST'])
def admin_ubah_barang():
    id1 = request.form['tambah']
    kode = request.form['kode']
    pelajaran = request.form['matapelajaran']
    kelas = request.form['kelas']

    cur = mysql.connection.cursor()
    cur.execute('UPDATE db_pelajaran SET kode_pelajaran=%s, nama_pelajaran=%s, kelas=%s WHERE id_pelajaran = %s', (kode, pelajaran, kelas, id1))

    mysql.connection.commit()
    cur.close()
    flash("mengubah", category=("info","info"))
    return redirect(url_for("admin_barang"))

# hapus barang /hapus/<string:id>
@app.route('/admin/barang/hapus/<string:id>', methods=['GET'])
def admin_hapus_barang(id):
    
    # id = request.form['delete']
    # print(id)
    cur = mysql.connection.cursor()
    cur.execute("DELETE FROM db_pelajaran WHERE id_pelajaran=%s", (id,))
    mysql.connection.commit()

    flash("menghapus", category=("danger","ban") )
    return redirect(url_for("admin_barang"))




