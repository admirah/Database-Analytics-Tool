function ExportViewFactory($filter, $mdDialog) {
    var dateTime;
    var done = false;

    function showModal() {
        $mdDialog.show(
            $mdDialog.alert()
            .parent(angular.element(document.querySelector('#popupContainer')))
            .clickOutsideToClose(true)
            .title('Generating PDF document')
            .textContent('Your PDF document is being generated. Please wait...')
            .ariaLabel('Alert Dialog Demo')
            .ok('Ok')
        );
    };

    function getAllContainers() {
        return $('body > div.row > div > div > div');
    };

    function hasClass(element, cls) {
        return (' ' + element.className + ' ').indexOf(' ' + cls + ' ') > -1;
    };

    function calculateImageSizeCanvas(options, element, doc, classa) {
        var image = document.createElement('img');
        image.src = element;
        var maxWidth = (doc.internal.pageSize.width * doc.internal.scaleFactor * 1.33333); //in pixels
        var maxWidthInt = doc.internal.pageSize.width - 15;
        var scaleFactor = maxWidth / doc.internal.pageSize.width; // 1 px = scaleFactor * x
        var x = image.width / scaleFactor;
        var y = image.height / scaleFactor;
        if (classa = "classonetable") {
            var factor = 1;
            if (x > maxWidthInt)
                factor = x / maxWidthInt;
            options.imageWidth = maxWidthInt;
            options.imageHeight = y / factor;
            options.class = "classone";
        } else if (classa = "classtwotable") {
            options.imageWidth = 606 / 2;
            options.imageHeight = 137;
            options.class = "classtwo";
        } else {
            options.imageWidth = 606 / 3;
            options.imageHeight = 127;
            options.class = "classthree";
        }
    }

    function calculateImageSize(options, element, doc) {
        var Bbox = element.firstChild.getBBox();
        var maxWidth = (doc.internal.pageSize.width * doc.internal.scaleFactor * 1.33333); //in pixels
        var maxWidthInt = doc.internal.pageSize.width - 15;
        var scaleFactor = maxWidth / doc.internal.pageSize.width; // 1 px = scaleFactor * x
        var x = Bbox.width / scaleFactor;
        var y = Bbox.height / scaleFactor;
        if (hasClass(element, "classone")) {
            var factor = 1;
            if (x > maxWidthInt)
                factor = x / maxWidthInt;
            options.imageWidth = maxWidthInt;
            options.imageHeight = y / factor;
            options.class = "classone";
        } else if (hasClass(element, "classtwo")) {
            options.imageWidth = 606 / 2;
            options.imageHeight = 130;
            options.class = "classtwo";
        } else {
            options.imageWidth = 606 / 3;
            options.imageHeight = 119;
            options.class = "classthree";
        }
    };

    function saveAsPngUriCallback(doc, imageW, imageH, last, currentX, currentY, newPage, callback, options) {
        return function(uri) {
            if (newPage) {
                doc.addPage();
                addPageNumber(doc);
            }
            doc.addImage(uri, 'PNG', currentX, currentY, imageW, imageH);
            postCalculations(options, currentX, currentY, imageW, imageH);
            callback();
        };
    };

    function addPngToDoc(doc, image, imageW, imageH, last, currentX, currentY, newPage, callback, options) {
        if (newPage) {
            doc.addPage();
            addPageNumber(doc);
        }
        doc.addImage(image, 'PNG', currentX, currentY, imageW, imageH);
        postCalculations(options, currentX, currentY, imageW, imageH);
        callback();
    }

    function addPageNumber(doc) {
        doc.setFontSize(9);
        doc.text(doc.internal.pageSize.width - 35, doc.internal.pageSize.height - 10, 'Page ' + doc.page); //print number bottom right
        doc.page++;
        doc.setFontSize(12);
        doc.text(10, 13, 'Swissquall Smart Panel Report ' + $filter('date')(dateTime, "dd/MM/yyyy HH:mm:ss"));
    };

    function addContainerToPdf(doc, svg_el, imageW, imageH, last, currentX, currentY, newPage, callback, options) {
        svgAsPngUri(svg_el, {}, saveAsPngUriCallback(doc, imageW, imageH, last, currentX, currentY, newPage, callback, options));
    };

    function preCalculations(doc, options) {
        var newPage = false;
        if (options.currentX + options.imageWidth > doc.internal.pageSize.width + 2) {
            options.currentX = 10;
            options.currentY += options.imageHeight + 25;
        }
        if (options.currentY + options.imageHeight > doc.internal.pageSize.height - 5) {
            options.currentY = 25;
            options.currentX = 10;
            newPage = true;
        }
        return newPage;
    };

    function postCalculations(options, oldX, oldY, oldW, oldH) {
        if (options.class == "classone") {
            options.currentX = 10;
            options.currentY = oldY + oldH + 20;
        } else {
            options.currentX = oldX + oldW;
        }
    };

    var exToPdf = function(uiView) {
        showModal();
        var doc = new jsPDF('l', 'px', 'a4');
        doc.setFontSize(12);
        dateTime = new Date();
        doc.text(10, 13, 'Database Analytics Tool Report ' + $filter('date')(dateTime, "dd/MM/yyyy HH:mm:ss"));
        doc.page = 1;
        addPageNumber(doc);
        var containers = getAllContainers();
        var options = {
            currentX: 10, //left margin
            currentY: 30, ///top margin
            imageWidth: 0,
            imageHeight: 0,
            last: false,
            class: ""
        };
        var lastIndex = containers.length - 1;
        var j = 0;
        async.eachSeries(containers, function(container, callback) {
            if (!hasClass(container, 'avoid')) {
                container = container.children[0];
                console.log(container);
                var class_name = container.className;
                var last = false;
                if (class_name.indexOf("table") !== -1) {
                    html2canvas(container, {
                        onrendered: function(canvas) {
                            var img_dataurl = canvas.toDataURL("image/png");
                            calculateImageSizeCanvas(options, img_dataurl, doc, class_name);
                            var newPage = preCalculations(doc, options);
                            var lastt = false;
                            if (j == lastIndex) lastt = true;
                            addPngToDoc(doc, img_dataurl, options.imageWidth, options.imageHeight, lastt, options.currentX, options.currentY, newPage, callback, options);
                        }
                    });
                } else {
                    calculateImageSize(options, container, doc);
                    var newPage = preCalculations(doc, options);
                    if (j == lastIndex) last = true;
                    addContainerToPdf(doc, container.firstChild, options.imageWidth, options.imageHeight, last, options.currentX, options.currentY, newPage, callback, options);
                }
                ++j;
            } else callback();
        }, function(err) {
            if (err) {
                console.log('A file failed to process');
                $mdDialog.cancel();
            } else {
                $mdDialog.cancel();
                doc.save("swissquall_report_" + $filter('date')(dateTime, "dd_MM_yyyy-HH-mm-ss") + ".pdf");
            }
        });
    };

    var exToExc = function(uiView) {
        console.log("toExcel");
    };

    return {
        toPdf: exToPdf,
        toExcel: exToExc
    };
};

angular.module('datApp')
    .service('ExportView', ExportViewFactory);
