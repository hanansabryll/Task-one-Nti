MYSQL TASK - PHP NATIVE

Folder structure:
- config/connection.php : database connection
- includes/             : header, footer and session protection
- assets/css/           : CSS file
- pages/                : the 10 task/report pages
- database/             : database.sql export file
- index.php             : home page
- login.php / logout.php: login and logout

How to run:
1. Extract MySQL_Task_Native into C:\xampp\htdocs\
2. Start Apache and MySQL from XAMPP.
3. Open http://localhost/phpmyadmin
4. Import database/database.sql. It creates mysql_task database and sample data.
5. Open http://localhost/MySQL_Task_Native/login.php

Demo login:
Email: ahmed@example.com
Password: password

Another account:
Email: tariq@example.com
Password: password

The project uses PHP Native, mysqli, sessions and Bootstrap 5 CDN.
