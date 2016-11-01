System.register(["@angular/core", 'ng2-nvd3'], function(exports_1, context_1) {
    "use strict";
    var __moduleName = context_1 && context_1.id;
    var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
        var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
        if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
        else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
        return c > 3 && r && Object.defineProperty(target, key, r), r;
    };
    var __metadata = (this && this.__metadata) || function (k, v) {
        if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
    };
    var core_1, ng2_nvd3_1;
    var forEach, ReportsComponent, j, dataglobal, x;
    function generateDataMultiBar() {
        return stream_layers(5, dataglobal.length, 0).map(function (data, i) {
            return {
                key: x[i],
                values: data
            };
        });
    }
    function stream_layers(n, m, o) {
        if (arguments.length < 3)
            o = 0;
        return d3.range(n).map(function () {
            var a = [], i;
            var s = "" + j;
            for (i = 0; i < m; i++)
                a[i] = dataglobal[i][s];
            j++;
            return a.map(stream_index);
        });
    }
    function stream_index(d, i) {
        return { x: i, series: dataglobal[i]["naziv"], y: Math.max(0, d) };
    }
    return {
        setters:[
            function (core_1_1) {
                core_1 = core_1_1;
            },
            function (ng2_nvd3_1_1) {
                ng2_nvd3_1 = ng2_nvd3_1_1;
            }],
        execute: function() {
            ReportsComponent = (function () {
                function ReportsComponent() {
                }
                ReportsComponent.prototype.ngOnInit = function () {
                    this.options = {
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
                    };
                    this.data = generateDataMultiBar();
                    console.log(this.data);
                };
                ReportsComponent = __decorate([
                    core_1.Component({
                        selector: "reports",
                        directives: [ng2_nvd3_1.nvD3],
                        templateUrl: "client/modules/reports/reports.component.html"
                    }), 
                    __metadata('design:paramtypes', [])
                ], ReportsComponent);
                return ReportsComponent;
            }());
            exports_1("ReportsComponent", ReportsComponent);
            j = 6;
            dataglobal = [{ "6": 1265, "7": 1271, "8": 1362, "9": 1316, "10": 1296, "naziv": "2008/2009" }, { "6": 1314, "7": 1336, "8": 1322, "9": 1377, "10": 1314, "naziv": "2009/2010" }, { "6": 1251, "7": 1309, "8": 1284, "9": 1335, "10": 1295, "naziv": "2010/2011" }, { "6": 1312, "7": 1283, "8": 1292, "9": 1284, "10": 1335, "naziv": "2011/2012" }, { "6": 1264, "7": 1284, "8": 1314, "9": 1337, "10": 1346, "naziv": "2012/2013" }, { "6": 1295, "7": 1283, "8": 1323, "9": 1268, "10": 1319, "naziv": "2013/2014" }, { "6": 1338, "7": 1302, "8": 1333, "9": 1269, "10": 1243, "naziv": "2014/2015" }, { "6": 1364, "7": 1360, "8": 1295, "9": 1285, "10": 1312, "naziv": "2015/2016" }, { "6": 1211, "7": 1300, "8": 1302, "9": 1302, "10": 1308, "naziv": "2016/2017" }];
            x = Object.keys(dataglobal[0]);
        }
    }
});
//# sourceMappingURL=reports.component.js.map