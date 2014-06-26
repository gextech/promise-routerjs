var promise = require('es6-promise'),
    Promise = module.exports = promise.Promise;

// https://github.com/tildeio/rsvp.js/blob/master/lib/rsvp/defer.js
Promise.defer = function(label) {
  var deferred = {};

  deferred.promise = new Promise(function(resolve, reject) {
    deferred.resolve = resolve;
    deferred.reject = reject;
  }, label);

  return deferred;
};

promise.polyfill();
