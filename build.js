var Metalsmith = require('metalsmith');
var less       = require('metalsmith-less');
var assets     = require('metalsmith-assets');
var markdown   = require('metalsmith-markdown-remarkable');
var prism      = require('metalsmith-prism');
var jade       = require('metalsmith-jade');
var layouts    = require('metalsmith-layouts');
var permalinks = require('metalsmith-permalinks');
var mapsite    = require('metalsmith-mapsite');
var watch      = require('metalsmith-watch');
var dotenv     = require('dotenv').config();

var NODE_ENV = process.env.NODE_ENV;
if (dotenv.NODE_ENV) {
  NODE_ENV = dotenv.NODE_ENV;
}

function watching() {
  if (NODE_ENV == 'development') {
    return watch({
      paths: {
        "${source}/**/*": "**/*",
        "layouts/**/*": "**/*",
        "assets/**/*": "**/*"
      },
      livereload: true,
    });
  }
}

Metalsmith(__dirname)
  .destination('wiki')
  .metadata({
    site: {
      name: 'syon/wiki'
    }
  })
  .use(assets({
    source: './assets',
    destination: './assets'
  }))
  .use(less())
  .use(markdown('full', {
    html: true,
    linkify: true,
    typographer: true
  }))
  .use(prism())
  .use(jade())
  .use(permalinks({pattern: ':slug'}))
  .use(layouts({engine:"jade"}))
  .use(mapsite({
    hostname: 'https://syon.github.io/wiki/'
  }))
  .use(watching())
  .build(function(err){
    if (err) throw err;
  });
