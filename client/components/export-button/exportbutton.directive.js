angular.module('datApp').directive('topdf', ['$http', 'FileSaver', 'Blob', function($http, FileSaver, Blob) {
    return {
        restrict: 'A',
        link: function(scope, element, attrs) {

            element.bind('click', function() {
                var divs = $('.topdf');
                div_elems = [];
                div_elems.push("<h1>"+ new Date() + " Database Analytics Tool Report" + '<p style="margin-bottom: 60px"></p>');
                for(var i = 0 ; i < divs.length; ++i){
                  div_elems.push(divs[i].outerHTML + "</br>");
                }

                $http.post('/api/dashboard/topdf', {elems: div_elems},{responseType:'arraybuffer'}).then(function(res){
                  var file = new Blob([res.data], { type: 'application/pdf' });
                  var fileURL = URL.createObjectURL(file);
                  window.open(fileURL);
                });
            });
        }
    }
}]);
