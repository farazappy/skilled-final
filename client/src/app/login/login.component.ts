import { Component, OnInit } from '@angular/core';
import { AuthService } from '../auth.service'
import { Router } from '@angular/router'

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  loginData = {}

  isLoading = false

  constructor(private auth: AuthService, private router: Router) {

  }

  ngOnInit () {
  }

  loginUser () {
    this.isLoading = true
    this.auth.loginUser(this.loginData)
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
