'use strict';

angular.module('datApp')
  .controller('MainCtrl', function ($scope, $http, $state) {
    $state.go('general');
});
