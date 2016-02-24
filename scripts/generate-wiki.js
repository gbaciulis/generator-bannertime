'use strict';

var jetpack = require('fs-jetpack');

main();

function main() {
  var src = jetpack.cwd('content');
  var dest = jetpack.dir('wiki', { empty: false });

  src.copy('.', dest.path(), {
    matching: ['*.md', '!_book/**/*', '!node_modules/**/*'],
    overwrite: true
  });

  var config = src.read('SUMMARY.md');
  dest.write('Home.md', config);

  console.log('Generated dev-wiki.');
}
