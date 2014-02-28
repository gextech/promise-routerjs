This repository mirrors the CommonJS version of [router.js](https://github.com/tildeio/router.js) and all its dependencies within.

> A big difference here is not using [RSVP](https://github.com/tildeio/rsvp.js),
> instead it's using [bluebird](https://github.com/petkaantonov/bluebird) for Promise handling.

You can install it as NPM module and then using Browserify bring it out to the _window_.

```
$ npm install routerjs
$ browserify main.js --no-detect-globals > router.js
```

**main.js**

```javascript
('undefined' !== typeof window ? window : this).Router = require('routerjs')['default'];
```

This repository is only experimental.
