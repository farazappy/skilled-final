import { Component, OnInit } from '@angular/core';
import { AuthService } from '../auth.service'
import { Router } from '@angular/router'
@Component({
  selector: 'app-signup',
  templateUrl: './signup.component.html',
  styleUrls: ['./signup.component.css']
})
export class SignupComponent implements OnInit {

  registerData = {
    role: 0
  }

  isLoading = false

  constructor(private auth: AuthService, private router: Router) {

  }

  ngOnInit () {
  }

  registerUser () {
    this.isLoading = true
    this.auth.registerUser(this.registerData)
      .subscribe(
        (res) => {
          this.isLoading = false
          localStorage.setItem('token', res.success.user.token)
          localStorage.setItem('user', res.success.user)
          this.auth.user = res.success.user
          this.router.navigate(['/dashboard'])
        },
        (err) => {
          this.isLoading = false
          console.log(err)
        }
      )
  }

}
