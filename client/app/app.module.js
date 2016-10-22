'use strict';

import ngCookies from 'angular-cookies';
import ngResource from 'angular-resource';
import ngSanitize from 'angular-sanitize';

import uiRouter from 'angular-ui-router';

import constants from './app.constants';
import main from './main/main.module';
import directives from '../components/directives.module';


import {
  routeConfig
} from './app.config';

export default angular.module('datApp', [ngCookies, ngResource, ngSanitize, uiRouter, constants,
    main, directives
  ])
  .config(routeConfig)
  .name;
