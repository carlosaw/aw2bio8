<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

use App\Models\User;

class AdminController extends Controller
{

    public function __construct() {
        $this->middleware('auth', ['except'=>[
            'login',
            'loginAction',
            'register',
            'registerAction'
            ]]);
    }

    public function login(Request $request) {
        return view('admin/login',[
            'error' => $request->session()->get('error')
        ]);
    }
    public function loginAction(Request $request) {
        $creds = $request->only('email', 'password');
        if(Auth::attempt($creds)) {
            return redirect('/admin');
        } else {
            $request->session()->flash('error', 'E-mail e/ou senha não conferem!');
            return redirect('/admin/login');
        }
    }

    public function register(Request $request) {
        return view('admin/register',[
            'error' => $request->session()->get('error')
        ]);
    }
    public function registerAction(Request $request) {
        $creds = $request->only('email', 'password');//Pega o que digitou
        // Verifica se email já existe
        $hasEmail = User::where('email', $creds['email'])->count();
        // Se não existe cria novo usuário
        if($hasEmail === 0) {
 
            $newUser = new User();
            $newUser->email = $creds['email'];
            $newUser->password = password_hash($creds['password'], PASSWORD_DEFAULT);
            $newUser->save();
            // Logar o usuário criado
            Auth::login($newUser);
            return redirect('/admin');

        } else {
            $request->session()->flash('error', 'Já existe um usuário com este e-mail');
            return redirect('/admin/register');
        }

    }

    public function logout() {
        Auth::logout();
        return redirect('/admin');
    }

    public function index() {
        return view('admin/index');
    }
}
