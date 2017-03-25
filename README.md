## What you need to use this thing

You must have Docker and Docker Compose installed

## How to use this thing

Clone the repo with `git clone https://github.com/dustinrue/centos7-haproxy-builder.git` and enter the `centos7-haproxy-builder` directory. Type `make`. If you don't have GNU make installed you can simply type `docker-compose up && docker-compose down` for the same effect. Once done you'll have HAProxy 1.6 rpms in the output dir.