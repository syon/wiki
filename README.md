wiki [![wercker status](https://app.wercker.com/status/515e5e0a2634e4004c65694b31553138/s/master "wercker status")](https://app.wercker.com/project/byKey/515e5e0a2634e4004c65694b31553138)
====

Generated with [MkDocs](https://www.mkdocs.org/).

## install

[Getting started \- Material for MkDocs](https://squidfunk.github.io/mkdocs-material/getting-started/)

### Using Docker

```bash
$ docker pull squidfunk/mkdocs-material
```

## usage

```bash
$ docker run --rm -it -p 8000:8000 -v ${PWD}:/docs squidfunk/mkdocs-material
```

## deploy

- [Deploying Your Docs \- MkDocs](https://www.mkdocs.org/user-guide/deploying-your-docs/#other-providers)

```bash
$ docker run --rm -it -v ${PWD}:/docs squidfunk/mkdocs-material gh-deploy
```
