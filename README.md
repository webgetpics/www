# Webgetpics Homepage

Homepage build automation for [webgetpics](http://www.webgetpics.org).
This is a reproducible build: all dependencies versions are frozen.
In the end it deploys everything to the Git repo.

## How to Build

Install [Docker](https://www.docker.com/).

Clone this repo:
   `git clone https://github.com/webgetpics/www <<<path-to-repo>>>`

Create config file at `/etc/webgetpics-www/config.sh`:
```
URL='<<<www.webgetpics.org>>>'
GIT_REPO='<<<git@github.com:webgetpics/webgetpics.github.io.git>>>'
GIT_USER='<<<James T. Kirk>>>'
GIT_EMAIL='<<<kirk@enterprise.uss>>>'
ID_RSA_PUB='<<<public ssh rsa key to access to the git repo>>>'
ID_RSA='<<<private ssh rsa key to access to the git repo>>>'
```

Run `<<<path-to-repo>>>/run.sh`

## License

The contents of this repo is licensed under MIT License.

## Contact

Oleg Plakhotniuk: contact@webgetpics.org
