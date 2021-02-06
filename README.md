# Bitnami Docker Image for PrestaShop

Available environment variables:

##### User and Site configuration

- `APACHE_HTTP_PORT_NUMBER`: Port used by Apache for HTTP. Default: **8080**
- `APACHE_HTTPS_PORT_NUMBER`: Port used by Apache for HTTPS. Default: **8443**
- `PRESTASHOP_FIRST_NAME`: PrestaShop application User's First Name. Default: **Bitnami**
- `PRESTASHOP_LAST_NAME`: PrestaShop application User's Last Name. Default: **User**
- `PRESTASHOP_PASSWORD`: PrestaShop application password. Default: **bitnami1**
- `PRESTASHOP_EMAIL`: PrestaShop application email. Default: **user@example.com**
- `PRESTASHOP_HOST`: PrestaShop server hostname/address.
- `PRESTASHOP_ENABLE_HTTPS`: Whether to use HTTPS by default. Default: **no**.
- `PRESTASHOP_EXTERNAL_HTTP_PORT_NUMBER`: Port to used by PrestaShop to generate URLs and links when accessing using HTTP. Default **80**.
- `PRESTASHOP_EXTERNAL_HTTPS_PORT_NUMBER`: Port to used by PrestaShop to generate URLs and links when accessing using HTTPS. Default **443**.
- `PRESTASHOP_COOKIE_CHECK_IP`: Whether to check the cookie's IP address or not. Default: **yes**. See the [Troubleshooting](#troubleshooting) section for more information.
- `PRESTASHOP_COUNTRY`: Default country of the store. Default: **us**.
- `PRESTASHOP_LANGUAGE`: Default language of the store (iso code). Default: **en**.
- `PRESTASHOP_SKIP_BOOTSTRAP`: Whether to perform initial bootstrapping for the application. Default: **no**

##### Use an existing database

- `PRESTASHOP_DATABASE_HOST`: Hostname for MariaDB server. Default: **mariadb**
- `PRESTASHOP_DATABASE_PORT_NUMBER`: Port used by MariaDB server. Default: **3306**
- `PRESTASHOP_DATABASE_NAME`: Database name that PrestaShop will use to connect with the database. Default: **bitnami_prestashop**
- `PRESTASHOP_DATABASE_USER`: Database user that PrestaShop will use to connect with the database. Default: **bn_prestashop**
- `PRESTASHOP_DATABASE_PASSWORD`: Database password that PrestaShop will use to connect with the database. No defaults.
- `ALLOW_EMPTY_PASSWORD`: It can be used to allow blank passwords. Default: **no**

##### Create a database for PrestaShop using mysql-client

- `MYSQL_CLIENT_DATABASE_HOST`: Hostname for MariaDB server. Default: **mariadb**
- `MYSQL_CLIENT_DATABASE_PORT_NUMBER`: Port used by MariaDB server. Default: **3306**
- `MYSQL_CLIENT_DATABASE_ROOT_USER`: Database admin user. Default: **root**
- `MYSQL_CLIENT_DATABASE_ROOT_PASSWORD`: Database password for the database admin user. No defaults.
- `MYSQL_CLIENT_CREATE_DATABASE_NAME`: New database to be created by the mysql client module. No defaults.
- `MYSQL_CLIENT_CREATE_DATABASE_USER`: New database user to be created by the mysql client module. No defaults.
- `MYSQL_CLIENT_CREATE_DATABASE_PASSWORD`: Database password for the `MYSQL_CLIENT_CREATE_DATABASE_USER` user. No defaults.
- `MYSQL_CLIENT_CREATE_DATABASE_CHARACTER_SET`: Character set to use for the new database. No defaults.
- `MYSQL_CLIENT_CREATE_DATABASE_COLLATE`: Database collation to use for the new database. No defaults.
- `MYSQL_CLIENT_ENABLE_SSL_WRAPPER`: Whether to force SSL connections to the database via the `mysql` CLI tool. Useful for applications that rely on the CLI instead of APIs. Default: **no**
- `MYSQL_CLIENT_ENABLE_SSL`: Whether to force SSL connections for the database. Default: **no**
- `MYSQL_CLIENT_SSL_CA_FILE`: Path to the SSL CA file for the new database. No defaults
- `MYSQL_CLIENT_SSL_CERT_FILE`: Path to the SSL CA file for the new database. No defaults
- `MYSQL_CLIENT_SSL_KEY_FILE`: Path to the SSL CA file for the new database. No defaults
- `ALLOW_EMPTY_PASSWORD`: It can be used to allow blank passwords. Default: **no**

##### SMTP Configuration

To configure PrestaShop to send email using SMTP you can set the following environment variables:

- `PRESTASHOP_SMTP_HOST`: SMTP host.
- `PRESTASHOP_SMTP_PORT`: SMTP port.
- `PRESTASHOP_SMTP_USER`: SMTP account user.
- `PRESTASHOP_SMTP_PASSWORD`: SMTP account password.

##### PHP configuration

- `PHP_EXPOSE_PHP`: Enables HTTP header with PHP version. No default.
- `PHP_MAX_EXECUTION_TIME`: Maximum execution time for PHP scripts. Default: **300**
- `PHP_MAX_INPUT_TIME`: Maximum input time for PHP scripts. Default: **-1**
- `PHP_MAX_INPUT_VARS`: Maximum amount of input variables for PHP scripts. Default: **10000**
- `PHP_MEMORY_LIMIT`: Memory limit for PHP scripts. Default: **256M**
- `PHP_POST_MAX_SIZE`: Maximum size for PHP POST requests. Default: **20M**
- `PHP_UPLOAD_MAX_FILESIZE`: Maximum file size for PHP uploads. Default: **25M**