<?php namespace App\Controllers\Zrortadmin;
use App\Models\Zrortadmin\LoginModel;
use CodeIgniter\Controller;

use App\Controllers\BaseController;
class Login extends BaseController
{
	public function index(){
		if($this->session->get('UserAuth') == 'Yes' && $this->session->get('role')> 0){
			return redirect()->route('Books-Categories');
		}else{ 
			echo view('Zrortadmin/zrortlogin/login');
		}
	}
	public function login_user()
	{	
		$model = new LoginModel();
		$username = $this->request->getPost('username');
		$password = $this->request->getPost('password');
		$curr_date = date("Y-m-d");
		$this -> session -> expire = time() + (120 * 120);
		$row = $model -> authenticate_user($username, $password);
		if($row > 0){
			$sessionData = array(
				'userLevel' => $row[0]['is_super_admin'],
				'username'  => $row[0]['username'],
				'user_id' 	=> $row[0]['pk_id'],
				'UserAuth'  => 'Yes',
				'role' => $row[0]['role_id']
			);
			$this->session-> set($sessionData);
			return redirect()->to(base_url('Books-Categories'))->with('msg', 'Logged in Successful');
		}
		else{
			return redirect()->to(base_url('SuperAdmin'))->with('message', 'Wrong Credentials! Try Again');
		}
	}
	public function logout()
	{
		$user_id = session('user_id');
		$model = new LoginModel();
		$model -> update_authenticate_user($user_id);
		$this->session->destroy();
		return redirect()->to(base_url('SuperAdmin'))->with('msg', 'Logged out Successful');
	}
}