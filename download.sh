#!/bin/bash

RSVP="http://rsvpjs-builds.s3.amazonaws.com/rsvp-latest.js"
ROUTERJS="http://routerjs.builds.emberjs.com.s3.amazonaws.com/router.cjs-latest.js"
ROUTE_RECOGNIZER="https://raw.github.com/tildeio/route-recognizer/master/dist/route-recognizer.cjs.js"

LIBDIR="$PWD/lib"

if [ ! -d "$LIBDIR"  ]; then
  mkdir -p $LIBDIR
fi

# transforms RSVP
printf "\rFetching rsvp ... "
curl -sL $RSVP | sed "s/window.RSVP/exports['default']/g" | sed 's/(window)/(this)/g' > $LIBDIR/rsvp.js
echo "OK"

# transforms router.js
printf "\rFetching router.js ... "
curl -sL $ROUTERJS | sed 's/require("/require(".\//g' > $LIBDIR/router.js
echo "OK"

printf "\rFetching route-recognizer ... "
curl -sL $ROUTE_RECOGNIZER > $LIBDIR/route-recognizer.js
echo "OK"
