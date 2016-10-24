System.register(['@angular/router', './izvjestaji.component'], function(exports_1, context_1) {
    "use strict";
    var __moduleName = context_1 && context_1.id;
    var router_1, izvjestaji_component_1;
    var routes, routing;
    return {
        setters:[
            function (router_1_1) {
                router_1 = router_1_1;
            },
            function (izvjestaji_component_1_1) {
                izvjestaji_component_1 = izvjestaji_component_1_1;
            }],
        execute: function() {
            exports_1("routes", routes = [
                { path: 'izvjestaji', component: izvjestaji_component_1.IzvjestajiComponent }
            ]);
            exports_1("routing", routing = router_1.RouterModule.forChild(routes));
        }
    }
});
//# sourceMappingURL=izvjestaji.routing.js.map