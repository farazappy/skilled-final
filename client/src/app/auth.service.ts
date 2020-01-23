import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http'
import { Router } from '@angular/router';

@Injectable({
  providedIn: 'root'
})
export class AuthService {

  private registerURL = "http://localhost:8000/api/auth/register"
  private loginURL = "http://localhost:8000/api/auth/login"
  private meURL = "http://localhost:8000/api/me"

  constructor(private http: HttpClient, private router: Router) {

  }

  user = null;

  registerUser (user) {
    return this.http.post<any>(this.registerURL, user)
  }

  loginUser (user) {
    return this.http.post<any>(this.loginURL, user)
  }

  me () {
    return this.http.get<any>(this.meURL)
  }

  loggedIn () {
    //console.log(localStorage.getItem('token'))
    return !!localStorage.getItem('token')
  }

  logoutUser () {
    localStorage.removeItem('token')
    localStorage.removeItem('user')
    this.router.navigate(['/'])
  }

  getToken () {
    return localStorage.getItem('token')
  }

}
