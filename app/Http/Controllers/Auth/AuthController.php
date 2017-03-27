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
		$thanhvien->username = $request->input('username');
		$thanhvien->email = $request->input('email');
		$thanhvien->password = Hash::make($request->input('password'));
		$thanhvien->firstname = $request->input('firstname');
		$thanhvien->phone = $request->input('phone');
		$thanhvien->address = $request->input('address');
		$thanhvien->level = $request->input('level');
		$thanhvien->remember_token = $request->input('_token');
		$thanhvien->save();
		//alert ("Đăng ký thành công");
		
		$dbUser = DB::table('users')->select('id','username','firstname','email','address','phone','level','created_at')->orderBy('id','DESC')->paginate(8);
		return view('backend.user.list',compact('dbUser'));
	}
	public function getLogin(){
		if(Auth::User()){
			if(Auth::User()->level == 1){
				return redirect()->route('admin');
			}
			return redirect('/');
		}
		return view('auth.login');
	}
	public function postLogin(LoginRequest $request){
		$auth = [
			'username' => $request->input('username'),
			'password' => $request->input('password'),
			
		];
		//$checks = DB::table('users')->select('email','password')->where($auth)->first();
		if($this->auth->attempt($auth)){
			if(Auth::User()->level == 1){
				return redirect()->route('admin');
			}
			return redirect('/');
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

	public function getList(){
		$dbUser = DB::table('users')->select('id','username','firstname','email','address','phone','level','created_at')->orderBy('id','DESC')->paginate(8);
		return view('backend.user.list',compact('dbUser'));

	}
	public function getIndex(){
		$mess = "";
		return view('backend.user.index',compact('mess'));
	}

		public function postIndex(RegisterRequest $request){
		$user = Auth::User();
		$user->firstname = $request->input('firstname');
		$user->email = $request->input('email');
		$user->phone = $request->input('phone');
		$user->address = $request->input('address');
		$user->save();
		$mess = "cập nhật thành công";
		return view('backend.user.index',compact('mess'));
	}
		public function getChangePass()
		{
				$mess = "";
		return view('backend.user.changepass',compact('mess'));
		}
		public function postChangePass(RegisterRequest $request)
		{
		$user = Auth::User();
		$user->password = Hash::make($request->input('newpass'));
		$user->save();
		$mess = "đổi mật khẩu thành công";
		return view('backend.user.changepass',compact('mess'));

		}
}
