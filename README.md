This repository mirrors the CommonJS version of [router.js](https://github.com/tildeio/router.js) and all its dependencies within.

> We're using a patched version of [promise-polyfill](https://github.com/taylorhakes/promise-polyfill) providing the barebones for Promise implementation.

You can install it as NPM module and then using Browserify bring it out to the _window_.

```bash
$ npm install routerjs
$ browserify main.js --no-detect-globals > router.js
```

**main.js**

```javascript
('undefined' !== typeof window ? window : this).Router = require('routerjs')['default'];
```

This repository is only experimental.
