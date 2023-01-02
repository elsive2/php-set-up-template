
# Set Up PHP Application

Prepared files for deploying any PHP application. This repository installs the application using docker, so docker must be installed on the PC.

This repository is:
 - Web server with default PHP configuration
 - Container with installed PHP and Composer
 - MySQL Database (can be replaced image in compose)
 - PhpMyAdmin to work with the database (ports are open, which means you can use a third-party client)

# How To Set Up

 1. Pull the remote repository with the project - `git clone git@github.com:elsive2/php-set-up-template.git`in **./www** directory
 2. We edit the nginx configuration file, change the path to the project, if necessary, add another configuration file
 3. Start our application with `docker-compose up -d`
 4. Configure your project, set up database configuration (user = **root**, password = **password**)
 5. Install composer  -- `docker exec php composer install --working-dir=PATH_TO_PROJECT`
 6. Other neccessary things...

You can also use other services like beanstalkd or elasticsearch by editing docker-compose.yml, and then refer to it as a container name 