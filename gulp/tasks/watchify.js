'use strict';

var gulp = require('gulp');
var watchify = require('watchify');
var browserify = require('browserify');
var source = require('vinyl-source-stream');
var browserifyShim = require('browserify-shim');
var coffeeify = require('coffeeify');

module.exports = gulp.task('watchify', function () {

  var bundler = watchify(browserify({
    entries: [config.paths.src.modules],
    extensions: ['.coffee'],
    cache: {},
    packageCache: {},
    debug: true
  }));

  bundler.transform(coffeeify);
  bundler.transform(browserifyShim);

  bundler.on('update', rebundle);

  function rebundle() {
    return bundler.bundle()
      .pipe(source(config.filenames.build.scripts))
      .pipe(gulp.dest(config.paths.dest.build.scripts));
  }

  return rebundle();
});
