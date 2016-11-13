angular.module('datApp').directive('topdf', [ function() {
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
                var dateTime = new Date();
                var doc = new jsPDF('l', 'pt', 'a4');
                doc.page = 1;
                var source = $('body > div.row > div > div > div');
                addPageNumber(doc, dateTime);
                async.eachSeries(source, function(div, callback) {
                        if (div != source[0]) {
                            doc.addPage();
                            addPageNumber(doc, dateTime);
                        }
                        doc.addHTML(div, function() {
                            callback();
                        })
                    },
                    function(err) {
                        if (err) {
                            console.log('Greska prilikom generiranje pdf izvjestaja');
                        } else {
                            doc.save("database_analytics_tool_report_" + ".pdf");
                        }
                    });
            });
        }
    }
}]);
