const nodeStatic = require('node-static');

var serve = new nodeStatic.Server(__dirname);
require('http').createServer((req, res) => {
  req.addListener('end', () => serve.serve(req, res));
  req.resume();
}).listen(8888);
