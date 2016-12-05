'use strict';

angular.module('datApp')
  .config(function ($stateProvider) {
    $stateProvider
      .state('predictions', {
        url: '/predictions',
        templateUrl: 'app/predictions/predictions.html',
        controller: 'PredictionsCtrl'
      });
  });
