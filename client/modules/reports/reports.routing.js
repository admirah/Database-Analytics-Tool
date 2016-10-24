System.register(['@angular/router', './reports.component'], function(exports_1, context_1) {
    "use strict";
    var __moduleName = context_1 && context_1.id;
    var router_1, reports_component_1;
    var routes, routing;
    return {
        setters:[
            function (router_1_1) {
                router_1 = router_1_1;
            },
            function (reports_component_1_1) {
                reports_component_1 = reports_component_1_1;
            }],
        execute: function() {
            exports_1("routes", routes = [
                { path: 'reports', component: reports_component_1.ReportsComponent }
            ]);
            exports_1("routing", routing = router_1.RouterModule.forChild(routes));
        }
    }
});
//# sourceMappingURL=reports.routing.js.map