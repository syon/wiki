wiki [![wercker status](https://app.wercker.com/status/515e5e0a2634e4004c65694b31553138/s/master "wercker status")](https://app.wercker.com/project/byKey/515e5e0a2634e4004c65694b31553138)
====

Generated with [MkDocs](https://www.mkdocs.org/),
theme by [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/).

## install

- Docker
- [Wercker CLI](https://www.wercker.com/cli)

## dev

```bash
$ wercker dev --expose-ports
```

## deploy

Automatically deployed to GitHub Pages via Wercker.

## note

### Why uses `syon/mkdocs-material` docker image?

- [syon/mkdocs\-material \- Docker Hub](https://hub.docker.com/r/syon/mkdocs-material/)

Because official image `squidfunk/mkdocs-material` provides `ENTRYPOINT`.
Which blocks using `mkdocs` command on Wercker.

## see also

- [Getting started \- Material for MkDocs](https://squidfunk.github.io/mkdocs-material/getting-started/)
