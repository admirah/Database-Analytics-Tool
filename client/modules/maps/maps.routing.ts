import { Routes, RouterModule } from '@angular/router';

import { MapsComponent } from './maps.component';

export const routes: Routes = [
    { path: 'maps', component: MapsComponent }
];

export const routing = RouterModule.forChild(routes);
