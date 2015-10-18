# Docker Environment POC

A proof of concept that shows that exposing the result of phpinfo() could be
even more dangerous as people move towards environment variables as recommended
for Docker applications.

# Usage

To be able to run this example you need to have Docker installed.

First things first, build the Docker image by running this command:

```
bash build.sh
```

Then, run the build image by running this command:

```
bash run.sh
```

This will boot up the php:7-apache image with the contents of `src/` added.

Then, issue a request to http://your_docker_host_ip:80/db.php and it should
return the contents of the MYSQL_DB_PASSWORD environment variable. If you
haven't modified run.sh, it should return `topsecret` as the password.

That's it! Remember to never expose your **phpinfo()**!
