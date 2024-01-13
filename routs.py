# from flask import Flask,url_for,render_template,redirect,flash,make_response,send_from_directory,session,request
# # import os
# from flask_mysqldb import MySQL
# # from werkzeug.utils import secure_filename
# # import datetime

# app =Flask (__name__)
# app.secret_key = 'mysecretkey'

# #========conaction database==========
# app.config['MYSQL_HOST'] = 'localhost'
# app.config['MYSQL_USER'] = 'root'
# app.config['MYSQL_PASSWORD'] = ''
# app.config['MYSQL_DB'] = 'flask2'

# mysql = MySQL(app)

# # Check connection status
# if mysql.connection:
#     print("Connected to MySQL")
# else:
#     print("Failed to connect to MySQL")


from flask import Flask,url_for,render_template,redirect,flash,make_response,send_from_directory,session,request
import os
from flask_mysqldb import MySQL
from werkzeug.utils import secure_filename
import datetime

app =Flask (__name__)
app.secret_key = 'mysecretkey'

#========conaction database==========
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'flask2'

# https://stackoverflow.com/questions/60316511/fetch-some-data-from-mysql-database-using-flask-python
mysql = MySQL(app)



def my_context_processor():
    cur = mysql.connection.cursor()
    cur.execute('SELECT * FROM last_news ORDER BY `last_news`.`id` DESC')
    last_news = cur.fetchall()
    return {'last_news': last_news}


@app.route('/')
def index (): 
  context = my_context_processor()
  last_news = context['last_news']

  cur = mysql.connection.cursor()
  cur.execute('SELECT * FROM statistics ORDER BY id DESC LIMIT 1')
  statistics = cur.fetchall()
  return render_template('index.html',statistics=statistics,last_news=last_news)


@app.route('/last_news/<id>')
def last_news (id):
  context = my_context_processor()
  last_news = context['last_news']

  cur = mysql.connection.cursor()
  cur.execute('SELECT * FROM last_news WHERE id= %s', (id,))
  onenews= cur.fetchall()
  return render_template('last_news.html',onenews=onenews)


@app.route('/about')
def about():
  context = my_context_processor()
  last_news = context['last_news']
  return render_template('about.html',last_news=last_news)
# ===========contact=============================

@app.route('/contact')
def contact():
 return render_template('contact.html')

@app.route('/insert-communicate', methods=['POST'])
def insert_communicate():
  name = request.form['name']
  email = request.form['email']
  topic = request.form['topic']
  text = request.form['text']

  cursor = mysql.connection.cursor()
  cursor.execute(''' INSERT INTO communicate VALUES(%s,%s,%s,%s,%s)''',(' ',name,email,topic,text))
  mysql.connection.commit()
  cursor.close()
  return render_template('contact.html')


# ===========guide projects=============================

@app.route('/projects')
def projects ():
  cur = mysql.connection.cursor()
  cur.execute('SELECT * FROM projects')
  data = cur.fetchall()
  return render_template('projects.html',data=data)

@app.route('/center')
def center():
  context = my_context_processor()
  last_news = context['last_news']

  context = my_context_processor()
  last_news = context['last_news']
  return render_template('center.html',last_news=last_news)

# =========section==============
@app.route('/computer_since')
def computer_since ():
  context = my_context_processor()
  last_news = context['last_news']

  return render_template('sections/computer_since.html',last_news=last_news)

@app.route('/math')
def math ():
  context = my_context_processor()
  last_news = context['last_news']
 
  return render_template('sections/math.html',last_news=last_news)

@app.route('/life')
def  life():
  context = my_context_processor()
  last_news = context['last_news']

  return render_template('sections/life.html',last_news=last_news)

@app.route('/Humanities')
def Humanities ():
  context = my_context_processor()
  last_news = context['last_news']

  return render_template('sections/Humanities.html',last_news=last_news)

@app.route('/Education')
def Education ():
  context = my_context_processor()
  last_news = context['last_news']

  return render_template('sections/Education.html',last_news=last_news)

@app.route('/Farming')
def Farming ():
  context = my_context_processor()
  last_news = context['last_news']

  return render_template('sections/Farming.html',last_news=last_news)

@app.route('/Administration')
def Administration ():
  context = my_context_processor()
  last_news = context['last_news']

  return render_template('sections/Administration.html',last_news=last_news)

@app.route('/computer')
def computer ():
  context = my_context_processor()
  last_news = context['last_news']

  return render_template('sections/computer.html',last_news=last_news)

@app.route('/law')
def  law():
  context = my_context_processor()
  last_news = context['last_news']

  return render_template('sections/law.html',last_news=last_news)





#========================req&adm============================

@app.get("/transit")
def transit():
  workingdir = os.path.abspath(os.getcwd())
  filepath = workingdir + '/static/assets/pdf'
  return send_from_directory(filepath, 'transit.pdf')

@app.get("/student_guide")
def student_guide():
  workingdir = os.path.abspath(os.getcwd())
  filepath = workingdir + '/static/assets/pdf'
  return send_from_directory(filepath, 'guid.pdf')

@app.route('/register')
def register ():
  context = my_context_processor()
  last_news = context['last_news']

  return render_template('req&adm/register.html',last_news=last_news)

@app.route('/members2023')
def members2023 ():
  cur = mysql.connection.cursor()
  cur.execute('SELECT * FROM members')
  data = cur.fetchall()
  return render_template('req&adm/members2023.html',data=data)


@app.route('/lastyears')
def lastyears ():
  cur = mysql.connection.cursor()
  cur.execute('SELECT * FROM graduat')
  data = cur.fetchall()
  return render_template('req&adm/lastyears.html',data=data)


  #  =======================end req&adm  ===============================


   #  =======================login   ===================================

@app.route('/login', methods=['POST'])
def login ():
  
  email = request.form['email']
  password = request.form['password']
  cur = mysql.connection.cursor()
  cur.execute('SELECT * FROM admins WHERE email=%s AND password = %s', (email, password))
  data = cur.fetchall()
  if len(data) > 0:
    session['donelogin'] = 'donelogin'
    return render_template('admin.html')
  else:
    flash('كلمة المرور او البريدالالكتروني غير صحيح')

    return render_template('login.html')



#  ======================= admin  ===================================
now = datetime.datetime.now()
datenow=now.strftime("%Y-%m-%d")

@app.route('/admin')
def admin (): 
  if 'donelogin' in session:
      return  render_template('admin.html')

  else:
      return render_template('login.html')

  #  ======================= insert-statistics  ===================================

@app.route('/insert-statistics', methods=['POST'])
def insert_statistics():
  masters = request.form['masters']
  research = request.form['research']
  students = request.form['students']
  colleges = request.form['colleges']
    
    
  cursor = mysql.connection.cursor()
  cursor.execute(''' INSERT INTO statistics VALUES(%s,%s,%s,%s,%s)''',(' ',masters,research,students,colleges))
  mysql.connection.commit()
  cursor.close()
  return render_template('admin.html')


#  ======================= insert-last_news  ===================================
@app.route('/insert-last_news', methods=['POST'])
def insert_last_news():
  title = request.form['title']
  description = request.form['description']
  file = request.files['image']

  filename = secure_filename(file.filename)
  dir_path = os.path.join(app.static_folder, 'assets', 'img', 'last_news')
  file_path = os.path.join(dir_path, filename)
  file.save(file_path)

  cursor = mysql.connection.cursor()
  cursor.execute(''' INSERT INTO last_news VALUES(%s,%s,%s,%s,%s)''',(' ',title,description,filename,datenow))
  mysql.connection.commit()
  cursor.close()
  return render_template('admin.html')

  #  ======================= insert-projects  ===================================

@app.route('/insert-last_search', methods=['POST'])
def insert_last_search():
  title = request.form['title']
  description = request.form['description']
  file = request.files['image']

  filename = secure_filename(file.filename)
  dir_path = os.path.join(app.static_folder, 'assets', 'img', 'last_search')
  file_path = os.path.join(dir_path, filename)
  file.save(file_path)

  cursor = mysql.connection.cursor()
  cursor.execute(''' INSERT INTO last_search VALUES(%s,%s,%s,%s)''',(' ',title,description,filename))
  mysql.connection.commit()
  cursor.close()
  return render_template('admin.html')

  #  ======================= insert-projects  ===================================

@app.route('/insert-projects', methods=['POST'])
def insert_projects():
  name_project = request.form['name_project']
  students = request.form['students']

  cursor = mysql.connection.cursor()
  cursor.execute(''' INSERT INTO projects VALUES(%s,%s,%s,%s)''',(' ',name_project,students,datenow))
  mysql.connection.commit()
  cursor.close()
  return render_template('admin.html')


  #  ======================= insert-graduat  ===================================

@app.route('/insert-graduat', methods=['POST'])
def insert_graduat():
  name = request.form['name']
  section = request.form['section']
  date_graduat = request.form['date_graduat']

  cursor = mysql.connection.cursor()
  cursor.execute(''' INSERT INTO graduat VALUES(%s,%s,%s,%s)''',(' ',name,section,date_graduat))
  mysql.connection.commit()
  cursor.close()
  return render_template('admin.html')

  #  ======================= insert-graduat  ===================================

@app.route('/insert-members', methods=['POST'])
def insert_members():
  name = request.form['name']
  section = request.form['section']
  brithday = request.form['brithday']

  cursor = mysql.connection.cursor()
  cursor.execute(''' INSERT INTO members VALUES(%s,%s,%s,%s)''',(' ',name,section,brithday))
  mysql.connection.commit()
  cursor.close()
  return render_template('admin.html')

  #======================= admin  ===================================



if __name__=="__main__":
    app.run(debug=True)