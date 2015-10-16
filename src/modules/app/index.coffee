'use strict'

module.exports = angular.module('screenGenerator', [
  'ui.bootstrap'
  'ui.router'
  require('../../../tmp/templates').name
  require('../common/index').name
  require('./main/index').name
])
