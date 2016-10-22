import angular from 'angular';

import uiRouter from 'angular-ui-router';
import {
  upgradeAdapter
} from '../upgrade_adapter';

import {
  MainComponent
} from './main.component';

import routing from './main.routes';

export default angular.module('aksiteApp.main', [uiRouter])
  .config(routing)
  .directive('main', upgradeAdapter.downgradeNg2Component(MainComponent))
  .name;
