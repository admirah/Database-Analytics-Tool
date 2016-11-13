'use strict';

angular.module('datApp')
  .controller('GeneralCtrl', function ($scope, $http) {
    $('select').material_select();
    $(document).ready(function(){
      $('.collapsible').collapsible();
    });
    $scope.tabela=false;

    $scope.promijeniTabela=function (x) {
      if(x==1) $scope.tabela=false;
      else $scope.tabela=true;
    }
    $scope.students = {
      model: null,
      values: [

      ]
    };
    $scope.years = {
      model: null,
      values: [
      ]
    };
    $scope.loadData=function(){


      $http.get('api/dashboard/getGradesByYears').then(function(response) {
        $scope.grades=response.data;
        $scope.dataGradesYears=generateDataMultiBar(response.data);
      });
      $http.get('api/dashboard/getCities').then(function(response) {
        $scope.dataCities=response.data;
      });

      $http.get('api/dashboard/getStudents').then(function(response){
        console.log(response.data);
        $scope.students.values=response.data;
      })
      $http.get('api/dashboard/getYears').then(function(response){
        console.log(response.data);
        $scope.years.values=response.data;
      })
    };


    $scope.optionsGradesYears= {
      chart: {
        type: 'multiBarChart',
        height: 450,
        margin: {
          top: 20,
          right: 20,
          bottom: 45,
          left: 45
        },
        clipEdge: true,
        //staggerLabels: true,
        duration: 500,
        stacked: true,
        xAxis: {
          axisLabel: 'Akademska Godina',
          showMaxMin: false,
          tickFormat: function (d) {
            return d3.format(',f')(d);
          }
        },
        yAxis: {
          axisLabel: 'BrojStudenata',
          axisLabelDistance: -20,
          tickFormat: function (d) {
            return d3.format(',.1f')(d);
          }
        }
      }
    }


    $scope.optionsCities = {
      chart: {
        type: 'pieChart',
        height: 1000,
        width:1000,
        x: function (d) {
          return d.key;
        },
        y: function (d) {
          return d.y;
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
    }

$scope.optionsGradesByYear={
  chart: {
    type: 'pieChart',
    height: 300,
    width:600,
    x: function (d) {
      return d.key;
    },
    y: function (d) {
      return d.y;
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
}

    $scope.$watch('students.model', function(newVal, oldVal){
      console.log($scope.students.model)
      if($scope.students.model!=null){console.log("admira");
        $http.get('api/dashboard/getStudentGrades/'+$scope.students.model.id).then(function(response){
          console.log(response)
          $scope.ocjene=response.data;
          console.log($scope.ocjene)
        })}
    });

    $scope.$watch('years.model', function(newVal, oldVal){
      if($scope.years.model!=null){
        $http.get('api/dashboard/getGradesByYear/'+$scope.years.model.id).then(function(response){
          $scope.dataGradesByYear=response.data;
        })}
    });


  });

var j = 6;
var dataglobal;
function generateDataMultiBar(datagloball) {
  var x = Object.keys(datagloball[0]);
  dataglobal=datagloball;
  return stream_layers(5, dataglobal.length, 0,dataglobal).map(function (data, i) {

    return {
      key: x[i],
      values: data
    };
  });

}


function stream_layers(n, m, o,dataglobal) {
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
