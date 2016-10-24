import { Component} from "@angular/core";
import "rxjs/add/operator/map";

@Component({
    selector: "app",
    template: `
<div class="ui container">
    <nav>
      <a routerLink="/reports" routerLinkActive="active">Izvjestaji</a>
      <a routerLink="/survey" routerLinkActive="active">Ankete</a>
 <a routerLink="/maps" routerLinkActive="active">Mape</a>
    </nav>
    <router-outlet></router-outlet>
    
    
    
   
   
</div>`
})
export class AppComponent {
    appName: string = "Angular 2 Express";

}
