import { Component, OnInit } from '@angular/core';
import { CompanyService } from '../../shared/company.service';
import { Router } from '@angular/router';
@Component({
  selector: 'app-search-job',
  templateUrl: './search-job.component.html',
  styleUrls: ['./search-job.component.css']
})
export class SearchJobComponent implements OnInit {

  companies = null;

  constructor(private companyService: CompanyService, private router: Router) { }

  ngOnInit () {
    this.companyService.getCompanies()
      .subscribe(
        res => {
          this.companies = res.companies;
        },
        err => {
          console.log(err);
        }
      );
  }
}
