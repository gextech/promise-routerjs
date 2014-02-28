#!/bin/bash

ROUTERJS="http://routerjs.builds.emberjs.com.s3.amazonaws.com/router.cjs-latest.js"

LIBDIR="$PWD/lib"

if [ ! -d "$LIBDIR"  ]; then
  mkdir -p $LIBDIR
fi

# transforms router.js
printf "\rFetching router.js ... "
JS=$(curl -sL $ROUTERJS | grep "var RouteRecognizer" -A 1500 -B 18)
echo "$JS" | grep "var RSVP" -B 19 | head --lines=-1 > $LIBDIR/router.js
echo "var RSVP = require('bluebird');" >>  $LIBDIR/router.js
echo "$JS" | grep "var slice" -A 1500 >> $LIBDIR/router.js
echo "OK"
