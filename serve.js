/* eslint no-console: "off" */
const nodeStatic = require('node-static');
const dotenv     = require('dotenv');

dotenv.config();

console.log(`Listening Port: ${process.env.LISTEN_PORT}`);
console.log(`Serving directory: ${process.env.SERVE_DIR}`);

const serve = new nodeStatic.Server(`${__dirname}/${process.env.SERVE_DIR}`);
require('http').createServer((req, res) => {
  req.addListener('end', () => serve.serve(req, res));
  req.resume();
}).listen(process.env.LISTEN_PORT);
