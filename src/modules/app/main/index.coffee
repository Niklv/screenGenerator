'use strict'

module.exports = angular.module('screenGenerator.foo', [])
.config(($stateProvider) ->
  $stateProvider.state 'index',
    url: ''
    templateUrl: 'app/main/index.html'
    controller: 'mainController'
).controller('mainController', require('./mainController'))
