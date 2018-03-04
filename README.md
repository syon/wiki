wiki
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
$ docker run --rm -it -p 8000:8000 -v ${PWD}:/docs squidfunk/mkdocs-material build

$ scp -r ./site user@host:/path/to/server/root
```
