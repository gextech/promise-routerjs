#!/bin/bash

ROUTERJS="http://routerjs.builds.emberjs.com.s3.amazonaws.com/router.cjs-latest.js"

# transforms router.js
printf "\rFetching router.js ... "

JS=$(curl -sL $ROUTERJS | grep "var RouteRecognizer" -A 1500 -B 18)
RSVP='__es6_transpiler_build_module_object__("RSVP", require("rsvp"))'
PROMISE='("undefined" !== typeof window ? window : global).Promise = require(".\/promise")'

echo "$JS" | sed "s/$RSVP/$PROMISE/g" > $PWD/lib/router.js

echo "OK"
