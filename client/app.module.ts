import { NgModule, CUSTOM_ELEMENTS_SCHEMA } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { provideAuth } from "angular2-jwt";
import { HttpModule } from "@angular/http";
import { NgSemanticModule } from "ng-semantic";

import { AppComponent }  from './app.component';
import { routing } from "./routes";
import { ReportsModule } from "./modules/reports/reports.module";
import { MapsModule } from "./modules/maps/maps.module";
import { SurveyModule } from "./modules/survey/survey.module";

@NgModule({
    imports: [
        BrowserModule,
        HttpModule,
        NgSemanticModule,
        ReportsModule,
      MapsModule,
      SurveyModule,
        routing
    ],
    providers: [
        provideAuth({
            globalHeaders: [{"Content-type": "application/json"}],
            newJwtError: true,
            noTokenScheme: true
        })
    ],
    declarations: [  AppComponent ],
    bootstrap:    [ AppComponent ],
    schemas: [
        CUSTOM_ELEMENTS_SCHEMA
    ]
})
export class AppModule {}