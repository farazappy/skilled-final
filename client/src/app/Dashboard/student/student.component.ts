import { Component, OnInit } from '@angular/core';
import { AuthService } from '../../auth.service';
import { Router } from '@angular/router';
import { HttpErrorResponse } from '@angular/common/http';
@Component({
  selector: 'app-student',
  templateUrl: './student.component.html',
  styleUrls: ['./student.component.css']
})
export class StudentComponent implements OnInit {

  user:null

  constructor(private auth: AuthService, private router: Router) { }

  ngOnInit() {
    
    this.user = this.auth.user
    this.auth.me()
      .subscribe(
        res => { this.user = res },
        err => {
          if (err instanceof HttpErrorResponse) {
            if (err.status === 401) {
              this.router.navigate(['/login'])
            }
          }
        }
      )


  }

}
