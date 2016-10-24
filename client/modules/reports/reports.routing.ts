import { Routes, RouterModule } from '@angular/router';

import { ReportsComponent } from './reports.component';

export const routes: Routes = [
    { path: 'reports', component: ReportsComponent }
];

export const routing = RouterModule.forChild(routes);
