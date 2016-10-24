import { NgModule, CUSTOM_ELEMENTS_SCHEMA } from '@angular/core';
import { HttpModule } from "@angular/http";
import { NgSemanticModule } from "ng-semantic";
import { CommonModule } from "@angular/common";

import { SurveyComponent } from "./survey.component";
import { routing } from "./survey.routing";
import { SharedModule } from "../shared/shared.module";

@NgModule({
    imports: [
        CommonModule,
        HttpModule,
        routing,
        SharedModule.forRoot(),
        NgSemanticModule
    ],
    declarations: [
      SurveyComponent
    ],
    bootstrap: [
      SurveyComponent
    ],
    schemas: [
        CUSTOM_ELEMENTS_SCHEMA
    ]
})
export class SurveyModule { }
