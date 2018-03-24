# Express

## articles

- [Node.js(Express4) + Heroku + PostgreSQLでTwitter botとサイト作った時のメモ(準備編) - Memo/](http://memo.brdr.jp/post/116650871021/node-js-express4-heroku-postgresql-twitter)
- [Node.js(Express4) + Heroku + PostgreSQLでTwitter botとサイト作った時のメモ(Tips編) - Memo/](http://memo.brdr.jp/post/117233031311/node-js-express4-heroku-postgresql-twitter)
- [Node.js+Express+MongoDBでREST APIをつくる - Qiita](http://qiita.com/itagakishintaro/items/a1519998a91061cbfb1e)


## tips

### SVG

- [node.js - render svg file and serve it using express - Stack Overflow](http://stackoverflow.com/questions/32546967/render-svg-file-and-serve-it-using-express)
```js
router.get('/status', function (req, res, next) {
  res.setHeader('Content-Type', 'image/svg+xml');
  res.sendFile(path.join(__dirname, '../views/status.svg'));
});
```
