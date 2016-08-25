wiki
====

[![wercker status](https://app.wercker.com/status/515e5e0a2634e4004c65694b31553138/s "wercker status")](https://app.wercker.com/project/bykey/515e5e0a2634e4004c65694b31553138)

syon's bookmarks and knowledges.


## Install

Node.js

```sh
$ npm install
```


## Run on Harp

```sh
# on project root
$ harp server
```

- http://localhost:9000/wiki/


## Build

Works on Metalsmith.

```sh
$ make
```

Files are generated in `wiki` directory (for github pages).


## Docker

```sh
# Make image with Dockerfile for building HTML
$ docker build -t syon/wiki .

# Run to build
$ docker run --rm -v (pwd):/tmp syon/wiki /bin/bash docker-script.sh

# Start web server -- http://localhost:4444
# <WIP>
$ docker run --name wiki -p 4444:80 nginx

# Stop web server
$ docker stop wiki
```
