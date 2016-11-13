'use strict';

angular.module('datApp', [
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'ui.router',
  'nvd3',
  'ngMaterial'
])
  .config(function ($stateProvider, $urlRouterProvider, $locationProvider) {
    $urlRouterProvider
      .otherwise('/generalreports');

    $locationProvider.html5Mode(true);
  });
