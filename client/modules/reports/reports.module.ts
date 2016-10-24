import { NgModule, CUSTOM_ELEMENTS_SCHEMA } from '@angular/core';
import { HttpModule } from "@angular/http";
import { NgSemanticModule } from "ng-semantic";
import { CommonModule } from "@angular/common";

import { ReportsComponent } from "./reports.component";
import { routing } from "./reports.routing";
import { SharedModule } from "../shared/shared.module";
declare let d3:any;
@NgModule({
    imports: [
        CommonModule,
        HttpModule,
        routing,
        SharedModule.forRoot(),
        NgSemanticModule,
    ],
    declarations: [
        ReportsComponent

    ],
    bootstrap: [
      ReportsComponent
    ],
    schemas: [
        CUSTOM_ELEMENTS_SCHEMA
    ]
})
export class ReportsModule { }
