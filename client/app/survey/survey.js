'use strict';

angular.module('datApp')
  .config(function ($stateProvider) {
    $stateProvider
      .state('survey', {
        url: '/survey',
        templateUrl: 'app/survey/survey.html',
        controller: 'SurveyCtrl'
      });
  });
