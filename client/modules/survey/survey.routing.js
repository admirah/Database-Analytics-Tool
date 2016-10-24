System.register(['@angular/router', './survey.component'], function(exports_1, context_1) {
    "use strict";
    var __moduleName = context_1 && context_1.id;
    var router_1, survey_component_1;
    var routes, routing;
    return {
        setters:[
            function (router_1_1) {
                router_1 = router_1_1;
            },
            function (survey_component_1_1) {
                survey_component_1 = survey_component_1_1;
            }],
        execute: function() {
            exports_1("routes", routes = [
                { path: 'survey', component: survey_component_1.SurveyComponent }
            ]);
            exports_1("routing", routing = router_1.RouterModule.forChild(routes));
        }
    }
});
//# sourceMappingURL=survey.routing.js.map