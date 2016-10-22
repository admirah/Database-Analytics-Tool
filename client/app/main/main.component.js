import {
  Component,
  Inject
} from '@angular/core';

export let MainComponent = @Component({
  selector: 'main',
  template: require('./main.html')
})
class MainComponent {

  awesomeThings = [];

  static parameters = ['$http'];
  constructor($http) {
    this.$http = $http;
  }

  ngOnInit() {
    this.$http.get('/api/things')
      .then(response => {
        this.awesomeThings = response.data;
      });
  }
};

MainComponent.parameters = ['$http'];
