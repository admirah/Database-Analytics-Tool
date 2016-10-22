import {
  NgModule
} from '@angular/core';
import {
  BrowserModule
} from '@angular/platform-browser';
// import { HttpModule } from '@angular/http';
// import { AUTH_PROVIDERS } from 'angular2-jwt';

import {
  MainModule
} from './main/main.ng2module';
// import { DirectivesModule } from '../components/directives.ng2module';
//
// import { utilModule } from '../components/util/util.ng2module';

import {
  upgradeAdapter
} from './upgrade_adapter';

upgradeAdapter.upgradeNg1Provider('socket');

export let AppModule = @NgModule({
  // providers: [AUTH_PROVIDERS],
  imports: [BrowserModule,
    // HttpModule,
    MainModule
  ]
})
class AppModule {};
