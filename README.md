# CPSC 321 Final Project
### Fall 2022
### Gonzaga University
### Developer: Noemi Turner

**References:** My project is inspired by the website: https://teamcoco.com/. The data and images from I borrowed from the website were used for education purposes only. 

## GitHub Repo Structure
* Turner-Project-Writeup.pdf - Overview of Project
* Podcast-Project-ER-Diagram.drawio.png - ER Diagram

## How to install and run the application
#### Requirements: 
* Use a Linux Operating System
* Install php
* Install MariaDB (mariadb.com), version 10.3.34. MariaDB is an open-source, community-developed fork of MySQL.
* I recommend using Google Chrome since that is the browser I used to test my web app.  

#### Running the application: 
1. Clone the repo
2. Create a MariaDB database 
3. Create a config.ini file with the following info and insert your usename and password where the empty strings are located: <br>
              [database] <br>
              servername = cps-database.gonzaga.edu <br>
              username = "" <br>
              password = "" <br>
4. Run the command: **source project-schema.sql** 
5. Run the command: **source project-data.sql**
6. Build the web app by running this command in the project directory: **php -S localhost:8000**
7. Navigate to the link: **http://localhost:8000/**
