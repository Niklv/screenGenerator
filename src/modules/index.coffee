'use strict'

window.LiveReloadOptions = { host: 'localhost' }
require 'livereload-js'

###
browserify-shim dependencies (can be edited in package.json)
###
require 'angular'
require 'angular-ui-bootstrap'
require 'angular-ui-router'
###
app entry point
###
require './app'
