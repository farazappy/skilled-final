import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { LoginComponent } from './login/login.component';
import { SignupComponent } from './signup/signup.component';
import { StudentComponent } from './Dashboard/student/student.component';
import { InstituteComponent } from './Dashboard/institute/institute.component';
import { CompanyComponent } from './Dashboard/company/company.component';
import { UnemployedComponent } from './Dashboard/unemployed/unemployed.component';
import { HttpClientModule, HTTP_INTERCEPTORS } from '@angular/common/http';
import { AuthService } from './auth.service';
import { FormsModule } from '@angular/forms';
import { DashboardComponent } from './Dashboard/dashboard.component';
import { AuthGuard } from './auth.guard';
import { TokenInterceptorService } from './token-interceptor.service';
import { ExamComponent } from './Dashboard/exam/exam.component';
import { SearchJobComponent } from './Dashboard/search-job/search-job.component';

@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    SignupComponent,
    StudentComponent,
    InstituteComponent,
    CompanyComponent,
    UnemployedComponent,
    DashboardComponent,
    ExamComponent,
    SearchJobComponent
  ],
  imports: [
    BrowserModule,
    FormsModule,
    AppRoutingModule,
    HttpClientModule,
  ],
  providers: [AuthService, AuthGuard, { provide: HTTP_INTERCEPTORS, useClass: TokenInterceptorService, multi: true }],
  bootstrap: [AppComponent]
})
export class AppModule { }
