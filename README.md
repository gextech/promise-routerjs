Extended [promise-polyfill](https://github.com/taylorhakes/promise-polyfill) by using with [router.js](https://github.com/tildeio/router.js) as Promise implementation.

You can install it as NPM module and then using Browserify bring it out to the _window_.

```bash
$ npm install promise-routerjs
$ browserify main.js --no-detect-globals > promise.js
```

**main.js**
```javascript
('undefined' !== typeof window ? window : this).Promise = require('promise-routerjs');
```

This repository is only experimental.
