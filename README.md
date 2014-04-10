This repository mirrors the CommonJS version of [router.js](https://github.com/tildeio/router.js) and all its dependencies within.

> Also exposes globally a [Promise implementation](https://github.com/taylorhakes/promise-polyfill) to work with the router.js

You can install it as NPM module and then using Browserify bring it out to the _window_.

```bash
$ npm install promise-routerjs
$ browserify main.js --no-detect-globals > router.js
```

**main.js**

```javascript
window.Router = require('promise-routerjs')['default'];
```

This repository is only experimental.
