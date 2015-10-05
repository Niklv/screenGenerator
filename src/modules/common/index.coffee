'use strict'

module.exports = angular.module('screenGenerator.common', [
  require('./directives/index').name
  require('./filters/index').name
  require('./services/index').name
])
