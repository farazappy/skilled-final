<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use App\User;
use App\Role;
use App\Interest;
use App\Subject;
use App\Test;
use App\Lecture;
use App\Question;
use App\Vacancy;
use App\Semester;
use GuzzleHttp\Client;


class AuthController extends Controller
{
    public function register(Request $request) {
        //dd($request->all());
    	$request->validate([
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:6', 'confirmed'],
            'phone' => ['required', 'numeric', 'digits:10', 'unique:users'],
            'role' => ['required', 'numeric', 'gt:0']
    	]);

        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'password' => Hash::make($request->password),
            'role_id' => $request->role,
            'semester_id' => $request->semester_id,
            'dob' => $request->dob
        ]);
        //dd($user);
        // if ($request->role == 4 && $request->interests) {
        //     foreach ($request->interests as $interest) 
        //         $user->interests()->attach($interest);


        //     $http = new Client;

        //     $response = $http->post("http://192.168.0.5:8000/youth/", [
        //         'form_params' => [
        //             "interests"    => $request->interests
        //         ]
        //     ]);

        //     $decoded = json_decode((string) $response->getBody(), true);

        //     $user->update(['profession_id' => $decoded['suggested_profession']]);
            
        // }

        $token = $user->createToken('password')->accessToken;
        $user->token = $token;
        

        return response()->json([
            'success' => [
                'message' => 'Registration was sucessfull!',
                'user' => $user,
            ]
        ]); 

        //$user->notify(new VerifyAccount());
    }

    public function login(Request $request) {
        if (!auth()->attempt($request->only('email', 'password'))) {
            return response(null, 401);
        }

        $user = User::where('email', $request->email)->first();
        $token = $user->createToken('password')->accessToken;
        $user->token = $token;

    	return response()->json([
    		'success' => [
    			'message' => 'Login was sucessfull!',
                'user' => $user,
    		]
    	]);	
    }
    public function getCompanies() {
        $companies = DB::table('users')->where('role', 3)->get(); //select * from users where role=3;
        return response()->json([
            'companies' => $companies
        ]);
    }
    public function getQuestions($level)
    {
        $questions = DB::table('questions')->where('level', $level)->get(); //select * from questions where level = $level;
        return response()->json([
            'questions' => $questions
        ]);
    }

    public function getFirstExam() {
        $test = Test::where('user_id',18)->with('questions')->inRandomOrder()->first();

        return response()->json([
            'test' => $test
        ]);
    }

    public function getExam($examId) {
        $test = Test::with('questions')->findOrFail($examId);

        return response()->json([
            'test' => $test
        ]);
    }

    public function submitFirstExam(Request $request) {
        $answers = $request->answers;
	    $user = User::findOrFail($request->user()->id);
        $test = Test::findOrFail($request->test);
        $sendAnswers = ['Q1' => '0', 'Q2' => '0', 'Q3' => '0', 'Q4' => '0', 'Q5' => '0', 'Q6' => '0', 'Q7' => '0', 'Q8' => '0', 'Q9' => '0', 'Q10' => '0'];
        foreach (array_keys($sendAnswers) as $key => $value) {
            if ($test->questions[$key]->correct == $answers[$key])
                $sendAnswers[$value] = 1;
            else
                $sendAnswers[$value] = 0;
        }

        $http = new Client;

        $response = $http->post("http://localhost:5000/predict_api", [
            \GuzzleHttp\RequestOptions::JSON => $sendAnswers
        ]);

        $decoded = json_decode((string) $response->getBody(), true);

        $user->update(['level' => $decoded['suggested_level']]);

        $test->update(['people_attempted' => $test->people_attempted++]);

        return response()->json([
            'user' => $user
        ]);
    }
    public function getTests() {
        return response()->json([
            'tests' => Test::all()
        ]);
    }
    public function getUser($userId) {
        $user = User::with('role')->with('interests')->findOrFail($userId);
        return response()->json([
            'user' => $user
        ]);
    }
    public function generic() {
        $roles = Role::all();
        $interests = Interest::all();

        return response()->json([
            'roles' => $roles,
            'interests' => $interests
        ]);
    }
    public function getMyTestsWithSubjects(Request $request) {
        $tests = Test::with('subject')->where('user_id', $request->user()->id)->get();
        return response()->json([
            'tests' => $tests
        ]);
    }
    public function getSubjects() {
        return response()->json([
            'subjects' => Subject::all()
        ]);
    }
    public function createTest(Request $request) {
        $user = User::findOrFail($request->user()->id);
        $test = $user->tests()->create($request->except('testQuestions'));
        // $total = 0;
        foreach ($request->testQuestions as $testQuestion) {
            $test->questions()->create($testQuestion);
            // $total += $testQuestion->marks;
        }
        // update total_marks in tests table
        // $user->tests()
        // $tests = ;

        return response()->json([
            'tests' => Test::with('subject')->where('user_id', $request->user()->id)->get()
        ]);
    }
    public function allProfiles() {
        $students = User::with('role')->where('role_id', 1)->get();
        $youths = User::with('role')->where('role_id', 4)->get();
        $teachers = User::with('role')->where('role_id', 3)->get();
        return response()->json([
            'students' => $students,
            'youths' => $youths,
            'teachers' => $teachers
        ]);
    }
    public function createVacancy(Request $request) {
        Vacancy::create($request->all());
        return response()->json([
            'message' => 'Vacancy created'
        ]);
    }
    public function getVacancies() {
        $vacancy = Vacancy::with('user')->get();
        return response()->json([
            'vacancies' => $vacancy
        ]);
    }
    public function createLecture(Request $request) {
        Lecture::create($request->all());
        return response()->json([
            'message' => 'Lecture created'
        ]);
    }
    public function getLecture(Request $request) {
        $user = User::findOrFail($request->user()->id);
        $lectures = Lecture::with('user')->where('profession_id', $user->profession_id)->get();
        return response()->json([
            'lectures' => $lectures
        ]);
    }

    public function getMyTests(Request $request)
    {
        // dd($request->user()->name);
        //$tests = auth()->user()->tests;
        $tests = Test::with('subject')->where('user_id', auth()->user()->id)->get();
        // dd($tests);
        return response()->json([
            'tests' => $tests 
        ]);
    }
    public function getSingleTest($id)
    {
        $test = Test::with('questions')->where('id',$id)->get();
        return response()->json($test);
    }
    public function editTest(Request $request, $id)
    {
        $user = User::findOrFail($request->user()->id);
        $test = Test::findOrFail($id);
        $test->update($request->except(['questions', 'total_marks']));
        foreach ($request->questions as $question) {
            Question::findOrFail($question['id'])->update($question);
        }
        return response()->json([
            'message' => 'Test ' . $id . ' edited successfully!'
        ]);
    }
    public function deleteTest($id)
    {
        $test = Test::findOrFail($id)->delete();
        $questions = Question::where('test_id',$id)->get();
        foreach ($questions as $question) {
            $question->delete();
        }
        return response()->json([
            'success' => 'Test removed successfully'
        ]);
    }
    public function getSemesters() {
        return response()->json([
            'semesters' => Semester::all()
        ]);
    }
    public function getQuestionTypes() {
        $question_types = DB::table('question_type')->get();
        return response()->json([
            'types' => $question_types
        ]);
    }
}
