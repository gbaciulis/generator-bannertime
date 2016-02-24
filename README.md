# Bannertime Docs

https://pyramidium.github.io/generator-bannertime

Generator Bannertime documentation.

## Scripts

Sync:
```bash
npm run sync
# npm run sync-wiki && npm run sync-content && npm run deploy
```

Watch task:
```bash
npm run watch
# gitbook install ./content && gitbook serve ./content ./public
```

Generate docs:
```bash
npm run generate-gitbook
# gitbook install ./content && gitbook build ./content ./public
```

Deploy docs:
```bash
npm run deploy
# npm run generate-gitbook && bash ./scripts/deploy-gitbook.sh
```

Generate wiki:
```bash
npm run generate-wiki
# node ./scripts/generate-wiki.js
```

Deploy wiki:
```bash
npm run deploy-wiki
# npm run generate-wiki && bash ./scripts/deploy-wiki.sh
```

Sync wiki:
```bash
npm run sync-wiki
# bash ./scripts/sync-wiki.sh
```

Sync content:
```bash
npm run sync-content
# node ./scripts/sync-content.js
```
