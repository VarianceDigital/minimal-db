# Minimal Flask + Boostrap 5 + PostgreSQL DB Demo Project 

## Overview

In this repo you'll find the source code for a small Flask + Boostrap 5 project, where data is managed by an instance of **PostgreSQL** (one of the most popular relational SQL database engines).

The project implements Lifesaver, a demo application for personal reminders of important events about friends and acquaintances (birtdays, wedding anniversaries, meetings, dates and other).

Furthermore, the demo shows a Flask view which returns a JSON string as output.

Please feel free to play with our demo, or learn more about this project (+ many other interesting things we are currently working on :) ). We will be glad if you clone the repo as a starting point for any future awesome application.

The main building bloks of Lifesaver do showcase a nice tech stack:
- Flask (Python) as the lightwight web server, where the business logic is coded,
- PostgreSQL as the SQL database engine for the data,
- Boostrap 5 as the framework for responsive layouts and UI elements,
- Datatables as a client-side plugin that adds powerful features to HTML tables

All of the above components are **FREE** and **OPEN SOURCE** (Datatables is fremium, but the free and open source functionalities are more than enough for most purposes).

It is quite easy to install Lifesaver on platforms like Azure and Heroku, and make it up and running.

This project is built "on top" of our **Minimal Project**, please have a look: the repo is here, there is a working demo here, and instructions here. "Minimal" is a good starting point for any Flask project for the following reasons: 
- sound structure using Python component and Flask Blueprints;
- well organized web page template with navbar, breadcrumbs, sticky footer;
- modal popus, alerts, custom error pages;
- in-site SEO friendly features;
- last but not least, a full fledged cookie banner (with server side management)

NOTE: for this demo, the cookie banner is disabled. De-comment the relative decorator to re-enable the banner in your project.
    
## Requirements and specifications
- The site make use of the Flask session, in a minimalistic way, to manage the cookie settings and policies
- IMPORTANT! secrets are supposed to be retrived from config vars. Running the site locally, these values are taken from main.py. To run the site in production, one MUST setup config vars server side. **Do not** send main.py (with git or similar VCS) to the net.
- Bootstrap 5 does not use JQuery anymore, but JQuery is needed for the Datatablse plugin (yes, latest versions of Datatables allow vanilla Javascript calls, but JQuery is still needed as a dependency).

### Packages needed, which are present in requirements.txt
All packages needed are listed in the requirements.txt file.
To install, first activate your venv and then:

``pip install -r requirements.txt``

The packages needed are:
- Flask
- gunicorn
- inflection

plus their dependencies.

## Project structure, page structure
For explanations see the following articles:


## Running this site on Azure and Heroku
Azure and Heroku
Heroku and Azu
TEST TEST TEST
