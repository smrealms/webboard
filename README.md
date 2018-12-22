Webboard server configuration
=============================

You must write a `.env` file with the following format:
```bash
# Variables needed by docker-compose.yml
MYSQL_ROOT_PASSWORD=chooseapassword
MYSQL_PASSWORD=chooseapassword
```

Add the following files / directories:
* `config.php`
* `data/images`
* `data/files`
* `data/store`
* `data/user_uploads`
