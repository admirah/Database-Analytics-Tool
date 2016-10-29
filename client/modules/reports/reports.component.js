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
    var ReportsComponent;
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
                            type: 'discreteBarChart',
                            height: 450,
                            margin: {
                                top: 20,
                                right: 20,
                                bottom: 50,
                                left: 55
                            },
                            x: function (d) { return d.label; },
                            y: function (d) { return d.value; },
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
                    };
                    this.data = [
                        {
                            key: "Cumulative Return",
                            values: [
                                {
                                    "label": "A",
                                    "value": -29.765957771107
                                },
                                {
                                    "label": "B",
                                    "value": 0
                                },
                                {
                                    "label": "C",
                                    "value": 32.807804682612
                                },
                                {
                                    "label": "D",
                                    "value": 196.45946739256
                                },
                                {
                                    "label": "E",
                                    "value": 0.19434030906893
                                },
                                {
                                    "label": "F",
                                    "value": -98.079782601442
                                },
                                {
                                    "label": "G",
                                    "value": -13.925743130903
                                },
                                {
                                    "label": "H",
                                    "value": -5.1387322875705
                                }
                            ]
                        }
                    ];
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
        }
    }
});
//# sourceMappingURL=reports.component.js.map