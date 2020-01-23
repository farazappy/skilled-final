import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { LoginComponent } from './login/login.component';
import { SignupComponent } from './signup/signup.component';
import { CompanyComponent } from './Dashboard/company/company.component';
import { InstituteComponent } from './Dashboard/institute/institute.component';
import { StudentComponent } from './Dashboard/student/student.component';
import { UnemployedComponent } from './Dashboard/unemployed/unemployed.component';
import { DashboardComponent } from './Dashboard/dashboard.component';
import { AuthGuard } from './auth.guard';
const routes: Routes = [
	{ path: 'login', component: LoginComponent },
	{ path: 'signup', component: SignupComponent },
	{
		path: 'dashboard',
		component: DashboardComponent,
		canActivate: [AuthGuard]
	},
	{ path: 'student/dashboard', component: StudentComponent },
	{ path: 'company/dashboard', component: CompanyComponent },
	{ path: 'institute/dashboard', component: InstituteComponent },
	{ path: 'unemployed/dashboard', component: UnemployedComponent },
];

@NgModule({
	imports: [RouterModule.forRoot(routes)],
	exports: [RouterModule]
})
export class AppRoutingModule { }
