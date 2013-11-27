This repository mirrors the CommonJS version of [router.js](https://github.com/tildeio/router.js) and all its dependencies within.

You can install it as NPM module and then using Browserify bring it out to the _window_.

```
$ npm install routerjs
$ browserify main.js --no-detect-globals > router.js
```

**main.js**

```javascript
('undefined' !== typeof window ? window : this).Router = require('routerjs')['default'];
```
