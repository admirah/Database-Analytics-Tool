'use strict';

angular.module('datApp')
  .config(function ($stateProvider) {
    $stateProvider
      .state('general', {
        url: '/generalreports',
        templateUrl: 'app/generalreports/general.html',
        controller: 'GeneralCtrl'
      });
  });
