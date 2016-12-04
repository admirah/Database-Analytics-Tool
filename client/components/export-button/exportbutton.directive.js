angular.module('datApp').directive('topdf', ['$http', 'FileSaver', 'Blob', function($http, FileSaver, Blob) {
    return {
        restrict: 'A',
        link: function(scope, element, attrs) {
            function addPageNumber(doc, dateTime) {
                doc.setFontSize(9);
                doc.text(doc.internal.pageSize.width - 35, doc.internal.pageSize.height - 10, 'Page ' + doc.page); //print number bottom right
                doc.page++;
                doc.setFontSize(10);
                doc.text(10, doc.internal.pageSize.height - 10, 'Database Analytics Tool Report ' + dateTime);
            };

            element.bind('click', function() {
                var divs = $('.topdf');
                div_elems = [];
                div_elems.push("<h1>"+ new Date() + " Database Analytics Tool Report" + "</h1></br>");
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
