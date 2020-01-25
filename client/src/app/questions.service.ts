import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http'

@Injectable({
  providedIn: 'root'
})
export class QuestionsService {

  private questionsURL = "http://localhost:8000/api/question/1"

  constructor(private http: HttpClient) { }

  getQuestions () {
    return this.http.get<any>(this.questionsURL)
  }
}
