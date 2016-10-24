import { Routes, RouterModule } from '@angular/router';

import { MapeComponent } from './mape.component';

export const routes: Routes = [
    { path: 'mape', component: MapeComponent }
];

export const routing = RouterModule.forChild(routes);
