'use strict';

var jetpack = require('fs-jetpack');

main();

function main() {
  var src = jetpack.cwd('wiki');
  var dest = jetpack.dir('content', { empty: false });

  src.copy('.', dest.path(), {
    matching: ['*.md'],
    overwrite: true
  });

  console.log('Synced content.');
}
