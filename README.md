wiki
====

[![wercker status](https://app.wercker.com/status/515e5e0a2634e4004c65694b31553138/s "wercker status")](https://app.wercker.com/project/bykey/515e5e0a2634e4004c65694b31553138)

syon's bookmarks and knowledges.


## Install

Node.js

```sh
$ npm install
```

__.env__
```sh
LISTEN_PORT=8888
SERVE_DIR=
```


## Build

Using Metalsmith.
Files are generated in `wiki` directory (for github pages).

#### on local machine

```sh
$ make
```

#### on Docker

```sh
# Make image with Dockerfile for building HTML
$ docker build -t syon/wiki .

# Run to build
$ sh build.sh
```


## Serve

```sh
$ node serve
```
- http://localhost:8888/wiki/
