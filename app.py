import sys

# flask imports
from flask import Flask, render_template, request, redirect, url_for

# SQLAlchemy
from model import Base, Post, Comment
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
    return render_template('category.html', button_name=button_name)


@app.route('/post', methods=['GET', 'POST'])
def post():
    if request.method == "GET":
        return render_template('post.html')
    else:
        new_title    = request.form.get('title')
        new_category = request.form.get('category')
        print('This error output %s' % new_title,  file=sys.stderr)

        post = Post(title=new_title, category="eee")
        session.add(post)
        session.commit()
        # ADD SQL SESSION
        return redirect(url_for('my_feed'))
