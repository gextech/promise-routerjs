#!/bin/bash

ROUTERJS="http://routerjs.builds.emberjs.com.s3.amazonaws.com/router.cjs-latest.js"
PROMISE=${1:-bluebird}
LIBDIR="$PWD/lib"

if [ ! -d "$LIBDIR"  ]; then
  mkdir -p $LIBDIR
fi

# transforms router.js
printf "\rFetching router.js ... "

JS=$(curl -sL $ROUTERJS | grep "var RouteRecognizer" -A 1500 -B 18)
RSVP='__es6_transpiler_build_module_object__("RSVP", require("rsvp"))'

echo "$JS" | sed "s/$RSVP/require('$PROMISE')/g" > $LIBDIR/router.js

echo "OK"
