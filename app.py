import sys

# flask imports
from flask import Flask, render_template, request, redirect, url_for

# SQLAlchemy
from model import Base, Post, Comment, User
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

# setup
app = Flask(__name__)
engine = create_engine('sqlite:///project.db')
Base.metadata.bind = engine
DBSession = sessionmaker(bind=engine)
session = DBSession()


@app.route('/')
def my_feed():
	posts = session.query(Post).all()
	return render_template('index.html', posts=posts)


@app.route('/comment')
def comment():
	return render_template('comment.html')

@app.route('/<string:button_name>')
def category(button_name):
    category_posts= session.query(Post).filter_by(category=button_name).all()
    return render_template('category.html', button_name=button_name, posts=category_posts)


@app.route('/post', methods=['GET', 'POST'])
def post():
    if request.method == "GET":
        return render_template('post.html')
    else:
        new_title    = request.form.get('title')
        new_category = request.form.get('category')
        new_debate   = request.form.get('debate')
        print('This error output %s' % new_title,  file=sys.stderr)

        post = Post(title=new_title, category=new_category, debate=new_debate)
        session.add(post)
        session.commit()
        # ADD SQL SESSION
        return redirect(url_for('my_feed'))

@app.route('/delete')
def delete_account():
    return render_template('delete_account.html')

@app.route('/password')
def change_password():
    return render_template('change_password.html')

@app.route('/sign_up', methods=['GET','POST'])
def sign_up():
    if request.method == "GET":
        return render_template('sign_up.html')
    else:
        new_username   = request.form.get('username')
        new_age        = request.form.get('age')
        new_gender     = request.form.get('gender')
        new_password   = request.form.get('password')

        user= User(username=new_username, age=new_age, gender=new_gender, password= new_password)
        session.add(user)
        session.commit()
        # ADD SQL SESSION
        return redirect(url_for('my_feed'))
        


@app.route('/sign_in')
def sign_in():
    return render_template('sign_in.html')


@app.route('/comment/<int:post_id>', methods=['GET', 'POST'])
def add_comment(post_id):
    if request.method == "GET":
        return render_template('index.html')
    else:
        new_comment   = request.form.get('comment')
        
        # print('This error output %s' % new_title,  file=sys.stderr)

        comment = Comment(comment=new_comment, post=post_id)
        session.add(comment)
        session.commit()
        # ADD SQL SESSION
        # comments = session.query(Comment).filter_by(post=post_id)
        posts =  session.query(Post).all()
        return redirect(url_for('my_feed'))
# @app.route()
# def delete():
    # session.query()
    # filter(new_title=)