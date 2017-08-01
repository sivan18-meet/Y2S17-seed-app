# flask imports
from flask import Flask, render_template, request, redirect, url_for

# SQLAlchemy
from model import Base, Post
from model import Base, Comment
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

# setup
app = Flask(__name__)
engine = create_engine('sqlite:///project.db')
Base.metadata.bind = engine
DBSession = sessionmaker(bind=engine)
session = DBSession()


@app.route('/post')
def post():
    return render_template('post.html')

@app.route('/')
def my_feed():
	return render_template('index.html')

@app.route('/comment')
def comment():
	return render_template('comment.html')