# Minimal Flask + Boostrap 5 + PostgreSQL DB Demo Project 

## Overview

In this repo you'll find the source code for a small Flask + Boostrap 5 project, where data is managed via a **PostgreSQL** database.

The project implements Minimal+DB, a demo application featuring a gallery of cat images.

Please feel free to play with our demo, or learn more about this project (+ many other interesting things we are currently working on :) ). We will be glad if you clone the repo as a starting point for your future awesome application.

The main building bloks of Minimald+DB do showcase a nice tech stack:
- Flask (Python) as the lightwight web server, where the business logic is coded,
- PostgreSQL as the SQL database engine for the data,
- Boostrap 5 as the framework for responsive layouts and UI elements.

All of the above components are **FREE** and **OPEN SOURCE**.

It is quite easy to install Minimal+DB on platforms like Azure and Heroku, and make it up and running on the Internet.

This project is built "on top" of our **Minimal Project**, please have a look: the repo is here, there is a working demo here, and instructions here. "Minimal" is a good starting point for any Flask project for the following reasons: 
- sound structure using Python package and Flask Blueprints;
- well organized web page template with navbar, breadcrumbs, sticky footer;
- modal popus, alerts, custom error pages;
- in-site SEO friendly features;
- last but not least, a full fledged cookie banner (with server side management).

    
## Requirements and specifications
- The site make use of the Flask session;
- IMPORTANT! secrets are supposed to be retrived from config vars. Running the site locally, these values are taken from main.py. To run the site in production, one MUST setup config vars server side.

### Packages needed are listed in requirements.txt
All packages needed to run this app are listed in the requirements.txt file.
To install, first activate your virutal environment and then launch:

``pip install -r requirements.txt``


## Project structure, page structure
For further explanations see the following article:
https://medium.com/@rinaldo.nani/flask-bootstrap-5-starter-web-sites-1f1237a85e83


## Running this site on Azure and Heroku
TODO: publish article which explains how.