from flask import Flask, render_template, request, session, redirect
from flask_sqlalchemy import SQLAlchemy
from datetime import datetime
from werkzeug.utils import secure_filename
import json, os

with open("config.json", "r") as c:
    param = json.load(c)["params"]

app = Flask(__name__)
app.secret_key = 'secret-key-hackathon'

app.config['UPLOAD_FOLDER'] = param['upload_location']

local_server = True

if local_server:
    app.config['SQLALCHEMY_DATABASE_URI'] = param['local_uri']  # mysql://username:password@localhost/db_name
else:
    app.config['SQLALCHEMY_DATABASE_URI'] = param['prod_uri']  # mysql://username:password@localhost/db_name
db = SQLAlchemy(app)


class Querry(db.Model):
    # sno,name,phone_no,msg,email,date

    sno = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(80), nullable=False)    
    name = db.Column(db.String(80), nullable=False)    
    content = db.Column(db.String(20), nullable=False)
    img_file = db.Column(db.String(20), nullable=False)
    address = db.Column(db.String(20), nullable=False)   
    phone_no = db.Column(db.String(15), nullable=False)
    email = db.Column(db.String(20), nullable=False)
    date = db.Column(db.String(12), nullable=False)
    



@app.route('/') 
def home():
    posts = Querry.query.filter_by().all()
    return render_template('index.html', param=param, posts=posts)


@app.route('/edit/<string:sno>', methods=['GET', 'POST'])
def edit(sno):
  
    if request.method == 'POST':

        f = request.files['file1']
        f.save(os.path.join(app.config['UPLOAD_FOLDER'], secure_filename(f.filename)))

        new_name = request.form.get('name')
        new_title = request.form.get('title')
        new_address= request.form.get('address')
        new_content = request.form.get('content')
        new_img_file = request.form.get('img_file')
        new_email = request.form.get('email')
        new_phone_no = request.form.get('phone_no')
        new_date = datetime.now()

        if sno == '0':

            new_post = Querry(name=new_name, title=new_title, address=new_address, content=new_content,
                                img_file=new_img_file,  email=new_email, phone_no = new_phone_no, date=new_date, )
            db.session.add(new_post)
            db.session.commit()

            return redirect('/')

    data = Querry.query.filter_by(sno=sno).first()
    return render_template('edit.html', post=data, sno=sno, param=param)




app.run(debug=True)
