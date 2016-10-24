import { Routes, RouterModule } from '@angular/router';

import { AnketeComponent } from './ankete.component';

export const routes: Routes = [
    { path: 'ankete', component: AnketeComponent }
];

export const routing = RouterModule.forChild(routes);
