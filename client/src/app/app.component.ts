import { Component } from '@angular/core';
import { AuthService } from './auth.service';
import { HttpErrorResponse } from '@angular/common/http';
import { Router } from '@angular/router';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {

  user = null;

  constructor(private auth: AuthService, private router: Router) { }

  title = 'SkillED';

  ngOnInit () {

    // this.auth.me()
    //   .subscribe(
    //     res => { this.user = res },
    //     err => {
    //       if (err instanceof HttpErrorResponse) {
    //         if (err.status === 401) {
    //           this.router.navigate(['/login'])
    //         }
    //       }
    //     }
    //   )
  }
}
