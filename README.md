# Dockerized web server for local developing in hacklang

Install:

- docker desktop:

  - `https://docs.docker.com/desktop/install/mac-install/`

- Free IDE:
  - [Visual Studio Code](https://code.visualstudio.com) to write code
  - [VSCode-Hack extension](https://github.com/slackhq/vscode-hack/) for syntax highliting

To start the container:
`docker-compose up -d`

To check the containers: `docker-compose ps`

To stop the container: `docker-compose stop`

To install composer autoload:

- `docker exec -it hack-laba bash -c "cd /var/www && php /opt/composer/composer.phar require  hhvm/hsl hhvm/hhvm-autoload"` and press "y" when it asks you.
  Note that 'hack-laba' is predefined Docker container name in file `docker-compose.yml` `container_name` parameter.

How to run HHVM typechecker:

- `docker exec -it hack-laba bash -c "cd /var/www && hh_client"`

#### Project structure

- /
  - /**public**/_index.hack_ - starting point
  - /**src**/ - here are any source code files you may want to include
  - /**test**/ - self-named place
  - _.gitignore_
  - _hhvm.prod.ini_ - hack lang server config

#### How to get logs:

- look at your docker log window

if you use `hhvm.log.file = /var/log/hhvm/error.log` setting:

- `docker-compose ps`
- `docker exec -it test-project-web-1 tail -f /var/log/hhvm/error.log` where `test-project-web-1` is the **_NAME_** of your container from `docker-compose ps` command
