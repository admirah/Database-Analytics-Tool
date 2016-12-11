'use strict';

angular.module('datApp')
  .controller('SurveyCtrl', function ($scope, $http, $rootScope, $state) {
    $scope.godinaKomentari = "";
    $scope.predmetKomentari = "";
    $scope.subjects = {
      model: null,
      values: []
    };


    $scope.years = {
      model: null,
      values: []
    };

    $scope.type = {
      model: null,
      values: [{
        path: "/client/images/charticon.png",
        name: "Bar Chart"
      },
        {
          path: "/client/images/pieicon.png",
          name: "Pie Chart"
        }]
    };


    $scope.loadData = function () {
      $http.get('api/dashboard/getSubjects').then(function (response) {
        $scope.subjects.values = response.data;
      })
      $http.get('api/dashboard/getYears').then(function (response) {

        $scope.years.values = response.data;
      });
    }


    $scope.xs = [1, 2, 3];
    $scope.ys = [1, 2];

    $scope.optionsPie = {
      chart: {
        type: 'pieChart',
        height: 500,
        x: function (d) {
          return d.label;
        },
        y: function (d) {
          return d.value;
        },
        showLabels: true,
        duration: 500,
        labelThreshold: 0.01,
        labelSunbeamLayout: true,
        legend: {
          margin: {
            top: 5,
            right: 35,
            bottom: 5,
            left: 0
          }
        }
      }
    };
    $scope.optionsBar = {
      chart: {
        type: 'discreteBarChart',
        height: 500,
        margin: {
          top: 20,
          right: 20,
          bottom: 50,
          left: 55
        },
        x: function (d) {
          return d.label;
        },
        y: function (d) {
          return d.value;
        },
        showValues: true,
        valueFormat: function (d) {
          return d3.format(',.4f')(d);
        },
        duration: 500,
        xAxis: {
          axisLabel: 'X Axis'
        },
        yAxis: {
          axisLabel: 'Y Axis',
          axisLabelDistance: -10
        }
      }
    }

$scope.removeWidget = function(id){
  $('#'+id).remove();
}

$scope.$watch('years.model', function (newVal, oldVal) {
  if ($scope.years.model != null && $scope.subjects.model != null) {
    $http.get('api/dashboard/getSurveyData/' + $scope.years.model.id + "/" + $scope.subjects.model.id).then(function (response) {

      $scope.graphs = [];

      angular.forEach(response.data, function (data, key) {

        var graph = {};
        graph.data = data.values;
        graph.fullData = [data];
        graph.options = $scope.optionsPie;
        graph.title = data.key;
        graph.type = 2;
        console.log(graph.fullData)
        $scope.graphs.push(graph);

      })


    })
  }
});
$scope.promijeniTabelaBar = function (x) {
  x.options = $scope.optionsBar;
  x.type = 1;
}

$scope.promijeniTabelaPie = function (x) {
  x.options = $scope.optionsPie;
  x.type = 2;

}

    $scope.mm=[
      {
        "key":"Ocijenite koliko su vam pomogle zadaće","values":[{"label":1,"value":16},{"label":2,"value":7},{"label":3,"value":8},{"label":4,"value":11},{"label":5,"value":17}]
      }
    ]

    $scope.$watch('subjects.model', function (newVal, oldVal) {

  if ($scope.years.model != null && $scope.subjects.model != null) {

    $http.get('api/dashboard/getSurveyData/' + $scope.years.model.id + "/" + $scope.subjects.model.id).then(function (response) {

      $scope.graphs = [];
      angular.forEach(response.data, function (data, key) {

        var graph = {};
        console.log(data);
        graph.data = data.values;
        graph.fullData = [data];
        graph.options = $scope.optionsPie;
        graph.title = data.key;
        graph.type = 2;

        console.log(graph.fullData)

        console.log($scope.mm)
        $scope.graphs.push(graph);

      })


    })
  }
});
})
;


function stream_layers(n, m, o, dataglobal) {
  if (arguments.length < 3) o = 0;

  return d3.range(n).map(function () {
    var a = [], i;
    var s = "" + j;
    for (i = 0; i < m; i++) a[i] = dataglobal[i][s];
    j++;
    return a.map(stream_index);
  });
}

function stream_index(d, i) {
  return {x: i, series: dataglobal[i]["naziv"], y: Math.max(0, d)};

}
