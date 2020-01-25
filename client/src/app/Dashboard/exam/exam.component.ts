import { Component, OnInit } from '@angular/core';
import { AuthService } from 'src/app/auth.service';
import { QuestionsService } from 'src/app/questions.service';
import { Router } from '@angular/router';
import { HttpErrorResponse } from '@angular/common/http';

@Component({
  selector: 'app-exam',
  templateUrl: './exam.component.html',
  styleUrls: ['./exam.component.css']
})
export class ExamComponent implements OnInit {

  user: null;
  questions: null;

  constructor(private auth: AuthService, private router: Router, private question: QuestionsService) { }

  ngOnInit () {
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

    this.question.getQuestions()
      .subscribe(
        res => {
          console.log()
          this.questions = res.questions
        },
        err => {
          console.log(err)
        }
      )
  }

}
