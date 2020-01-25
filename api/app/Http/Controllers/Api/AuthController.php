<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\User;

use GuzzleHttp\Client;


class AuthController extends Controller
{
    public function register(Request $request) {

    	$request->validate([
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:6', 'confirmed'],
            'phone' => ['required', 'numeric', 'digits:10', 'unique:users'],
            'role' => ['required', 'numeric', 'gt:0']
            // 'pubgusername' => ['required', 'string', 'unique:users'],
            // 'pubgid' => ['sometimes', 'numeric', 'unique:users'],
            // 'heard' => ['required'],
    	]);

        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'institution' => $request->institution,
            'password' => Hash::make($request->password),
            'skills' => $request->skills,
            'role' => $request->role,
            'trade_lic_no' => $request->trade_lic_no,
            'ugc_no' => $request->ugc_no,
            'qualification' => $request->qualification,
            'interested_in' => $request->interested_in,
            'address' => $request->address,
        ]);

        //$user->notify(new VerifyAccount());

        $http = new Client;

        // $response = $http->post(url('oauth/token'), [
        //     'form_params' => [
        //         'grant_type'    => 'password',
        //         'client_id'     => '2',
        //         'client_secret' => 'vInKT0gEMev0C8VJ8zcr66I0BoayN6VLZehwnnQf',
        //         'username'      => $request->email,
        //         'password'      => $request->password,
        //         'scope'         => '',
        //     ]
        // ]);

        // $decoded = json_decode((string) $response->getBody(), true);

        // $user->access_token = $decoded['access_token'];
        // $user->refresh_token = $decoded['refresh_token'];

        $token = $user->createToken('password')->accessToken;
        $user->token = $token;
        

    	return response()->json([
    		'success' => [
    			'message' => 'Registration was sucessfull!',
                'user' => $user,
    		]
    	]);	
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
    public function getUser($userId) {
        $user = DB::table('users')->where('id', $userId)->get(['name','email','phone','institution','skills','trade_lic_no','ugc_no','qualification','interested_in','address','role']);
        return response()->json([
            'user' => $user
        ]);
    }
}
