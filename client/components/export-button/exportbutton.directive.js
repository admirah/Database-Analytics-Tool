angular.module('datApp').directive('topdf', [function() {
    return {
        restrict: 'A',
        link: function(scope, element, attrs) {
            element.bind('click', function() {
                var dateTime = new Date();
                var doc = new jsPDF('l', 'pt', 'a4');
                var source = $('body > div.row > div > div > div');
                async.eachSeries(source, function(div, callback) {
                        if (div != source[0]) doc.addPage();
                        doc.addHTML(div, function() {
                            callback();
                        })
                    },
                    function(err) {
                        if (err) console.log('Greska prilikom generiranje pdf izvjestaja');
                        else {
                            doc.save("database_analytics_tool_report_" + ".pdf");
                        }
                    });
            });
        }
    }
}]);
