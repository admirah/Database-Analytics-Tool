angular.module('datApp')
    .controller('PredictionsCtrl', function($scope, $http, $state) {
        $scope.nazivi = [];
        $http.get('/api/dashboard/getSubjects').then(function functionName(res) {
            $scope.predmeti = res.data;
        })

        $scope.iscrtaj = function(pred) {
            $http.get('/api/dashboard/projectNumberOfStudents/'+pred.id).then(function(res) {
                //console.log(res.data.values);
                $scope.exampleData = [{
                    "key": "Predvidjanje broja studenata",
                    "values": res.data.values
                }];
                $scope.options = {
                    chart: {
                        type: 'lineChart',
                        height: 450,
                        margin: {
                            top: 20,
                            right: 20,
                            bottom: 60,
                            left: 65
                        },
                        x: function(d) {
                            return d[0];
                        },
                        y: function(d) {
                            return d[1];
                        },
                        //average: function(d) { console.log(d)},

                        color: d3.scale.category10().range(),
                        duration: 300,
                        useInteractiveGuideline: true,
                        clipVoronoi: false,

                        xAxis: {
                            axisLabel: 'X Axis',
                            tickFormat: function(d) {
                                //console.log(d);
                                return res.data.nazivi[d] //d3.time.format('%m/%d/%y')(new Date(d))
                            },
                            showMaxMin: false,
                            staggerLabels: true
                        },

                        yAxis: {
                            axisLabel: 'Y Axis',
                            tickFormat: function(d) {
                                console.log(d);
                                return d;
                                //return d3.format(',.1%')(d);
                            },
                            axisLabelDistance: 20
                        }
                    }
                };
            });
        }
    });
