import { Component, OnInit } from '@angular/core';
import { CompanyService } from '../../shared/company.service';
import { Router } from '@angular/router';
@Component({
  selector: 'app-search-job',
  templateUrl: './search-job.component.html',
  styleUrls: ['./search-job.component.css']
})
export class SearchJobComponent implements OnInit {
  companyDetails;
  constructor(private companyService: CompanyService, private router:Router) { }
  ngOnInit() {
    this.companyService.getCompanies().subscribe(
      data => {
        console.log(data)
        this.companyDetails = data['companies'];
      },
      err => {
        console.log(err);
      });
  }
}
