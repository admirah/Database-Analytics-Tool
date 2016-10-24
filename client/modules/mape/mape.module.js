System.register(['@angular/core', "@angular/http", "ng-semantic", "@angular/common", "./mape.component", "./mape.routing", "../shared/shared.module"], function(exports_1, context_1) {
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
    var core_1, http_1, ng_semantic_1, common_1, mape_component_1, mape_routing_1, shared_module_1;
    var MapeModule;
    return {
        setters:[
            function (core_1_1) {
                core_1 = core_1_1;
            },
            function (http_1_1) {
                http_1 = http_1_1;
            },
            function (ng_semantic_1_1) {
                ng_semantic_1 = ng_semantic_1_1;
            },
            function (common_1_1) {
                common_1 = common_1_1;
            },
            function (mape_component_1_1) {
                mape_component_1 = mape_component_1_1;
            },
            function (mape_routing_1_1) {
                mape_routing_1 = mape_routing_1_1;
            },
            function (shared_module_1_1) {
                shared_module_1 = shared_module_1_1;
            }],
        execute: function() {
            MapeModule = (function () {
                function MapeModule() {
                }
                MapeModule = __decorate([
                    core_1.NgModule({
                        imports: [
                            common_1.CommonModule,
                            http_1.HttpModule,
                            mape_routing_1.routing,
                            shared_module_1.SharedModule.forRoot(),
                            ng_semantic_1.NgSemanticModule,
                        ],
                        declarations: [
                            mape_component_1.MapeComponent
                        ],
                        bootstrap: [
                            mape_component_1.MapeComponent
                        ],
                        schemas: [
                            core_1.CUSTOM_ELEMENTS_SCHEMA
                        ]
                    }), 
                    __metadata('design:paramtypes', [])
                ], MapeModule);
                return MapeModule;
            }());
            exports_1("MapeModule", MapeModule);
        }
    }
});
//# sourceMappingURL=mape.module.js.map