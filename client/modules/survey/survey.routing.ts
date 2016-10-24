import { Routes, RouterModule } from '@angular/router';

import { SurveyComponent } from './survey.component';

export const routes: Routes = [
    { path: 'survey', component: SurveyComponent }
];

export const routing = RouterModule.forChild(routes);
