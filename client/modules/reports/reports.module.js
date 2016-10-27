"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var core_1 = require('@angular/core');
var http_1 = require("@angular/http");
var ng_semantic_1 = require("ng-semantic");
var common_1 = require("@angular/common");
var reports_component_1 = require("./reports.component");
var reports_routing_1 = require("./reports.routing");
var shared_module_1 = require("../shared/shared.module");
var ng2_nvd3_1 = require("ng2-nvd3");
var ReportsModule = (function () {
    function ReportsModule() {
    }
    ReportsModule = __decorate([
        core_1.NgModule({
            imports: [
                common_1.CommonModule,
                http_1.HttpModule,
                reports_routing_1.routing,
                shared_module_1.SharedModule.forRoot(),
                ng_semantic_1.NgSemanticModule,
            ],
            declarations: [
                reports_component_1.ReportsComponent,
                ng2_nvd3_1.nvD3
            ],
            bootstrap: [
                reports_component_1.ReportsComponent
            ],
            schemas: [
                core_1.CUSTOM_ELEMENTS_SCHEMA
            ]
        })
    ], ReportsModule);
    return ReportsModule;
}());
exports.ReportsModule = ReportsModule;
//# sourceMappingURL=reports.module.js.map