import os
import psycopg2
from flask import g
from urllib.parse import urlparse

def get_db():
    db = getattr(g,'_database', None)
    if db is None:

        #HEROKU
        DATABASE_URL = ''
        if 'DATABASE_URL' in os.environ:
            DATABASE_URL = os.environ['DATABASE_URL']

        #AZURE DB
        DBNAME = ''
        if 'DBNAME' in os.environ:
            DBNAME = os.environ['DBNAME']
            DBUSER = os.environ['DBUSER']
            DBPASSWORD = os.environ['DBPASSWORD']
            DBHOST = os.environ['DBHOST']


        if len(DATABASE_URL)>0:
            url = urlparse(DATABASE_URL)
            dbname = url.path[1:]
            user = url.username
            password = url.password
            host = url.hostname
            port = url.port
            sslmode = 'require' 
        elif len(DBNAME)>0:
            dbname = DBNAME
            user = DBUSER
            password = DBPASSWORD
            host=DBHOST
            port='5432'
            sslmode = 'require' 
        else:
            #LOCAL ACCESS
            dbname = 'my_local_db'
            user = 'postgres'
            password = 'postgres'
            host = 'localhost'
            port = '5432'
            sslmode = None

        db = g._database = psycopg2.connect(
             dbname=dbname,
             user=user,
             password=password,
             host=host,
             port=port,
             sslmode=sslmode)

    return db


def close_db(e=None):
    db = g.pop('_database', None)
    if db is not None:
        db.close()

#TO CLOSE DB AT THE END!
def init_app(app):
    app.teardown_appcontext(close_db)
