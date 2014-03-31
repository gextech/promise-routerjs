var Promise = module.exports = require('promise-polyfill');

// https://github.com/tildeio/rsvp.js/blob/master/lib/rsvp/defer.js
Promise.defer = function(label) {
  var deferred = {};

  deferred.promise = new Promise(function(resolve, reject) {
    deferred.resolve = resolve;
    deferred.reject = reject;
  }, label);

  return deferred;
};

Promise.from = function(value) {
  if ('function' === typeof value.then) {
    return value;
  }

  return new Promise(function(done) {
    done(value);
  }, function(err) {
    err();
  });
};
