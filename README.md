# Charity Funding Technical Documentation

1. [Project Files Structure]()
    - [htaccess file]()
    - [other files]()

# **1. Project Files Structure**

[https://lh4.googleusercontent.com/yxq55QBpXLEMCtu38pMhW96wu-sR8fItJP7xW22Ea4ftGZNQ6CHkPh6R1sbeLl0vIu3Zgx0kXiACFnXSIdXN7LX_tpDZluCru-nS0aa6j9GMHXvqXEh3Hhei3_UvUZy1egG2eddJ](https://lh4.googleusercontent.com/yxq55QBpXLEMCtu38pMhW96wu-sR8fItJP7xW22Ea4ftGZNQ6CHkPh6R1sbeLl0vIu3Zgx0kXiACFnXSIdXN7LX_tpDZluCru-nS0aa6j9GMHXvqXEh3Hhei3_UvUZy1egG2eddJ)

The project contains mainly 2 directories, one directory called “app” and another directory called “public”. The app directory contains the core code and files for the application and all of the classes will be inside this directory

Also the app directory has the MVC Framework folders such as model, views and controllers. Inside the core folder there is 4 files

[https://lh5.googleusercontent.com/163RmE1NIQRfSFNv77fJ5vqV1JntElY_9WwL0iRD2sQSEKKHSON4TegtHCbc3FIzDV3n-VFkSpQ40rlRTfzOcQg8BNiCwYmYCCcWp0sq-z71k4517tJPwcf-L_hbbCtMfAb37Ts4](https://lh5.googleusercontent.com/163RmE1NIQRfSFNv77fJ5vqV1JntElY_9WwL0iRD2sQSEKKHSON4TegtHCbc3FIzDV3n-VFkSpQ40rlRTfzOcQg8BNiCwYmYCCcWp0sq-z71k4517tJPwcf-L_hbbCtMfAb37Ts4)

### **1.1 (.htaccess file)**

Inside the app directory and public directory there is a file with the name .htaccess.

- htaccess files are often used to specify the security restrictions for the particular director for example, no one can access the core files for the application

Before using .htaccess: files and folders are public

[https://lh4.googleusercontent.com/x2pZgXMuDoO-6zRjNbnIkkYQeXw8WSkeMhbf4Ei64957Gm7fKUmIhjVe4rbA1vSclwg4_jXj6AzwVSxaPcP1PKaFL2UJyEe_pP61FsPlB5DRrBJmfnzR76WBGdZvQUu04uOiXTl6](https://lh4.googleusercontent.com/x2pZgXMuDoO-6zRjNbnIkkYQeXw8WSkeMhbf4Ei64957Gm7fKUmIhjVe4rbA1vSclwg4_jXj6AzwVSxaPcP1PKaFL2UJyEe_pP61FsPlB5DRrBJmfnzR76WBGdZvQUu04uOiXTl6)

After using .htaccess file: core files and folders are not public and not everyone can access to it

[https://lh6.googleusercontent.com/U4oZoFqSkseKHoW270NISSA3AumN5sKe0p0RcG8FCcGF7yWRFa0cVc_wNrLkB5V7mO7OpwaE6ypk_Q_heUcxRRXzrkvYy6XD9SUMBDlQ-sqZEPGFHHxtRJEWp8JvtSRMFUFutmHA](https://lh6.googleusercontent.com/U4oZoFqSkseKHoW270NISSA3AumN5sKe0p0RcG8FCcGF7yWRFa0cVc_wNrLkB5V7mO7OpwaE6ypk_Q_heUcxRRXzrkvYy6XD9SUMBDlQ-sqZEPGFHHxtRJEWp8JvtSRMFUFutmHA)

- .htaccess file can handle the error messages that shown when someone request a page that is not available ( Error 404)
- .htaccess file can rewrite urls and show short urls instead of no meaning urls

### **1.2 other files**

- init.php: this file contain all the includes so instead of calling multiple files, this file will contain all includes and when we need to call any
- include, we will just call this file that contains all of the includes
- index.php: handling all the coming request
- app.php: the app class
- controller.php: the MVC controller file
- database.php: database operations
- function.php: functions file