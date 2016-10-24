import { Routes, RouterModule } from '@angular/router';

import { IzvjestajiComponent } from './izvjestaji.component';

export const routes: Routes = [
    { path: 'izvjestaji', component: IzvjestajiComponent }
];

export const routing = RouterModule.forChild(routes);
