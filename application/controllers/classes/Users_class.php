<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require "./application/controllers/interfaces/interface_login.php";
include "./application/models/User_model.php";

class Users_class extends CI_Controller implements interface_login
{
	private $users;
	private $user_mdl;

	public function __construct()
	{
		parent::__construct();
		$this->user_mdl = new User_model();
	}

	public function setEmail($email)
	{
		$this->users["email"] = $email;
	}

	public function setPassword($password)
	{
		$this->users["password"] = $password;
	}

	public function getEmail() : String
	{
		return $this->users["email"];
	}

	public function getPassword(): String
	{
		return $this->users["password"];
	}

	public function login()
	{
		$res = $this->user_mdl->login($this->getEmail(), $this->getPassword());
		if($res["res"]=== true)
		{
			$arr = (array) $res["data"];
			$this->session->set_userdata($arr);
			return $res["data"];
		}
		return $res["res"];
	}

	public function register()
	{
		return $this->user_mdl->register(
			array("email" => $this->getEmail(),
			      "password" => password_hash($this->getPassword(), PASSWORD_BCRYPT)
				));
	}

}
