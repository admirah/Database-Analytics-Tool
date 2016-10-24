import { NgModule, CUSTOM_ELEMENTS_SCHEMA } from '@angular/core';
import { HttpModule } from "@angular/http";
import { NgSemanticModule } from "ng-semantic";
import { CommonModule } from "@angular/common";

import { IzvjestajiComponent } from "./izvjestaji.component";
import { routing } from "./izvjestaji.routing";
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
        IzvjestajiComponent

    ],
    bootstrap: [
      IzvjestajiComponent
    ],
    schemas: [
        CUSTOM_ELEMENTS_SCHEMA
    ]
})
export class IzvjestajiModule { }
