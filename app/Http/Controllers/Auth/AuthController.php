<?php namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Contracts\Auth\Guard;
use Illuminate\Contracts\Auth\Registrar;
use Illuminate\Foundation\Auth\AuthenticatesAndRegistersUsers;
use App\Http\Requests;
use App\Http\Requests\LoginRequest;
use App\Http\Requests\RegisterRequest;
use Auth,DB,Hash;
use App\User;
use Session;
class AuthController extends Controller {

	/*
	|--------------------------------------------------------------------------
	| Registration & Login Controller
	|--------------------------------------------------------------------------
	|
	| This controller handles the registration of new users, as well as the
	| authentication of existing users. By default, this controller uses
	| a simple trait to add these behaviors. Why don't you explore it?
	|
	*/

	use AuthenticatesAndRegistersUsers;

	/**
	 * Create a new authentication controller instance.
	 *
	 * @param  \Illuminate\Contracts\Auth\Guard  $auth
	 * @param  \Illuminate\Contracts\Auth\Registrar  $registrar
	 * @return void
	 */
	public function __construct(Guard $auth, Registrar $registrar)
	{
		$this->auth = $auth;
		$this->registrar = $registrar;

		$this->middleware('guest', ['except' => 'getLogout']);
	}
	public function getRegister(){
		return view('auth.register');
	}
	public function postRegister(RegisterRequest $request){
		$thanhvien = new User;
		$thanhvien->username = $request->input('name');
		$thanhvien->email = $request->input('email');
		$thanhvien->password = Hash::make($request->input('password'));
		$thanhvien->firstname = $request->input('firstname');
		$thanhvien->phone = $request->input('phone');
		$thanhvien->address = $request->input('address');
		$thanhvien->level = $request->input('level');
		$thanhvien->remember_token = $request->input('_token');
		$thanhvien->save();
		//alert ("Đăng ký thành công");
		return view('/');
	}
	public function getLogin(){
		return view('auth.login');
	}
	public function postLogin(LoginRequest $request){
		$auth = [
			'username' => $request->input('username'),
			'password' => $request->input('password'),
			
		];
		//$checks = DB::table('users')->select('email','password')->where($auth)->first();
		if($this->auth->attempt($auth)){
			return redirect()->route('admin');
		}else{
			echo "<pre>";
				print_r($auth);
			echo "</pre>";
		};
	}

	public function getLogout()
    {
        $this->auth->logout();
        Session::flush();
        return redirect('/');
    }
}
