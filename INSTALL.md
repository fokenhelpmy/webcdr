1. Install node.js (4+) and npm 

    If its already installed but on an older version then you need to update 

1.1 Update node with the following command
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash 

    and then add node 8 with this command

    nvm install v8.16.2

2. Install global npm packages used to build webcdr:
   ```
   npm -g install bower browserify
   ```
2.1 Clone webcdr into freepbx server

    git clone https://github.com/fokenhelpmy/webcdr.git

3. Install bower dependencies:
   ```
   cd PATH_TO_WEBCDR/public
   bower install
   cd ..
   ```

4. Install npm dependencies:
   ```
   npm install
   ```
   
5. Build frontend:
   ```
   npm run build
   ```
   
6. Import the webuser table into mysql/mariadb located in webcdr/install/ folder

   mysql asteriskcdrdb < webuser.sql (add username and password if you are not using the standard root profile i.e mysql -uroot -p asteriskcdrdb < webuser.sql)
   ```  
7. Add another field into the asterisk cdr database following these instructions line by line
   
   mysql (add username and password if you are not using the standard root profile i.e mysql -uroot -p)
   use asteriskcdrdb;
   ALTER TABLE `cdr` ADD `newid` INT NOT NULL AUTO_INCREMENT PRIMARY KEY;
   
8. Exit mysql and stay in the webcdr folder
 
9. Set database credentials, recordings glob pattern and other parameters in config.ini
10. Start the server (HTTP on port 9030 by default):
    ```
    node server.js
    ```

    Use `admin`/`admincdr` to login for the first time. Don't forget to change the default password!
11. Use a process manager like forever, pm2, systemd to run server in background.
12. (optional) Set up standalone webserver to serve static files, proxy dynamic requests to node.js.
