from flask import Flask,render_template,request
from flask_mysqldb import MySQL

app = Flask(__name__)

# MySQL database configuration
db_config = {
    'host': 'localhost',
    'user': 'root',
    'password': 'root',
    'database': 'users',
}

@app.route('/',methods=['GET','POST'])
def index():
    if request.method =='POST':
     username =request.form['username']
     email=request.form['email']
     cur = mysql.connection.cursor()
     cur.execute("INSERT INTO users (name,email) VALUES (%S,%S)",(name,email))
     mysql.connection.commit()
     cur.close()
     return "success"
    return render_template('index.html')

if __name__ == '__main__':
    app.run(debug=True)
