# File breakdown

A brief description of the generated files.

```
.editorconfig (Used to help developers define and maintain consistent coding styles between different editors and IDEs)
.gitignore (Used to ignore files when committing to a git repository)
.jshintrc (Helps to detect errors and potential problems in code)
package.json (Contains project node/npm package data)
README.md (Readme file for developers)
/gulpfile.js
  - config.js
  - index.js
  /lib
    - backup-generator.js (The backup generator functions)
    - handleErrors.js (Stop gulp from exiting when there is a syntax error)
  /tasks
    - backup-generator.js (Task for generating backup images)
    - backupImage.js (Task for prompting the user if there is no backup image)
    - browserSync.js (Task for fast live reload injection)
    - build-development.js (Task that runs development tasks)
    - build-production.js (Task that runs production tasks)
    - clean.js (Task that deletes assets before build)
    - default.js (Task for enabling `gulp` shortcut instead of typing `gulp build:development`)
    - fonts.js (Task for copying font files to public directory)
    - help.js (Task for providing help with gulp commands)
    - html.js (Task for copying html files to public directory)
    - images.js (Task for copying and compressing image files to public directory)
    - javascript.js (Task for copying js files to public directory)
    - json.js (Task for copying json files to public directory)
    - prod.js (Task for enabling `gulp prod` shortcut instead of typing `gulp build:production`)
    - sass.js (Task for compiling sass files into css in the public directory)
    - server.js (Task for setting up a local production server)
    - svg-sprite.js (Task for converting svg files into an svg spritesheet, a png spritesheet and the sprite dimensions in a css file)
    - watch.js (Task for watching files for changes and triggering browser sync to reload the page on update)
    - zip.js (Task for compressing files for delivery)
/src
  - index.html (The preview page)
  /base
    /images
      - desktop.png (Desktop icon)
      - loading.gif (Loading icon)
      - logo.png (The campaign logo)
    /js
      - main.js (The preview page functions)
    /styles
      - style.scss (The preview page styles)
  /[banner-name]-[banner-size]
    - index.html (The example html file)
    /images
      - logo.png (Example logo)
    /js
      - banner.animation.js (The main creative file)
      - banner.js (Base banner functions)
      - banner.loader.js (Used to load files politely)
    /styles
      - style.scss (Imports the base styles for the banner)
      /base
        - _banner.scss (Base banner styles)
        - _preloader.scss (Base preloader styles)
```
