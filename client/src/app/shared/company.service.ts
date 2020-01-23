import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Router } from '@angular/router';

@Injectable({
  providedIn: 'root'
})
export class CompanyService {
  private baseURL = 'http://localhost:8000/api/companies';
  constructor(private http: HttpClient, private router: Router) { }
  companies = null;
  getCompanies() {
    return this.http.get<any>(this.baseURL);
  }
}
