angular.module('datApp').directive('changestate', [ '$state', function($state) {
    return {
        restrict: 'A',
        scope: {
      info: '@'
    },
        link: function(scope, element, attrs) {
            element.bind('click', function() {
              $state.go(scope.info);
            });
        }
    }
}]);
