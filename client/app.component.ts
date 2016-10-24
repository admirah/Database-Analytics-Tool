import { Component} from "@angular/core";
import "rxjs/add/operator/map";

@Component({
    selector: "app",
    template: `
<div class="ui container">
    <nav>
      <a routerLink="/izvjestaji" routerLinkActive="active">Izvjestaji</a>
      <a routerLink="/ankete" routerLinkActive="active">Ankete</a>
 <a routerLink="/mape" routerLinkActive="active">Mape</a>
    </nav>
    <router-outlet></router-outlet>
    
    
    
   
   
</div>`
})
export class AppComponent {
    appName: string = "Angular 2 Express";

}
