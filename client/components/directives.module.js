import angular from 'angular';

import {
  NavbarComponent
} from './navbar/navbar.component';
import {
  FooterComponent
} from './footer/footer.component';

export default angular.module('directives.navbar', [])
  .component('navbar', {
    template: require('./navbar/navbar.html'),
    controller: NavbarComponent
  })
  .component('footer', {
    template: require('./footer/footer.html'),
    controller: FooterComponent
  })
  .name;
