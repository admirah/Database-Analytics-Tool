'use strict';

angular.module('datApp', [
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'ui.router',
  'nvd3'
])
  .config(function ($stateProvider, $urlRouterProvider, $locationProvider) {
    $urlRouterProvider
      .otherwise('/');

    $locationProvider.html5Mode(true);
  });
