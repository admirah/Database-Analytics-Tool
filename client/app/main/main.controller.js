'use strict';

angular.module('datApp')
  .controller('MainCtrl', function ($scope, $http, $state) {
    $(document).ready(function(){
        $('ul.tabs').tabs();
      });
    $state.go('general');
});
