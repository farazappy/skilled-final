<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/me', function (Request $request) {
    return \App\User::with('role')->with('profession')->findOrFail($request->user()->id);
});

Route::post('/auth/register', 'Api\\AuthController@register');
Route::post('/auth/login', 'Api\\AuthController@login');
Route::get('/auth/register/generic', 'Api\\AuthController@generic');
Route::get('/companies', 'Api\\AuthController@getCompanies');
Route::get('/student/exam/first', 'Api\\AuthController@getFirstExam');
Route::get('/student/exam/{examId}', 'Api\\AuthController@getExam');
Route::get('tests', 'Api\\AuthController@getTests');
Route::middleware('auth:api')->post('/student/exam/first', 'Api\\AuthController@submitFirstExam');
Route::get('/question/{level}', 'Api\\AuthController@getQuestions');
Route::get('/profile/{userId}', 'Api\\AuthController@getUser');
Route::get('/subjects', 'Api\\AuthController@getSubjects');
Route::middleware('auth:api')->get('/auth/tests', 'Api\\AuthController@getMyTestsWithSubjects');
Route::middleware('auth:api')->post('/auth/tests/create', 'Api\\AuthController@createTest');
Route::get('/company/hire/profiles', 'Api\\AuthController@allProfiles');
Route::post('/company/createVacancy', 'Api\\AuthController@createVacancy');
Route::get('/getVacancies','Api\\AuthController@getVacancies');
Route::post('/createLecture','Api\\AuthController@createLecture');
Route::middleware('auth:api')->get('/getLectures','Api\\AuthController@getLecture');
Route::middleware('auth:api')->get('/teacher/getMyTests', 'Api\\AuthController@getMyTests');
