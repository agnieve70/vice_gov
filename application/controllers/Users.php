<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include "./application/controllers/classes/Users_class.php";
// include "./system/core/Controller.php";

class Users extends Users_class {

	private $user_info;

	public function __construct()
	{
		parent::__construct(null);
	}
	// views
	public function vw_login()
	{
		$this->load->view('login');
	}

	public function vw_register()
	{
		$this->load->view('register');
	}

	public function vw_user_dashboard()
	{
		$this->load->view('user_dashboard');

	}

	public function vw_change_password()
	{
		$this->load->view('change_password');
	}

	public function vw_admin_dashboard()
	{
		$this->load->view('admin_dashboard');
	}

	public function vw_collectors()
	{
		$this->load->view('collectors');
	}

	// logic
	public function validate()
	{
		$this->setEmail($this->input->post("email"));
		$this->setPassword($this->input->post("password"));

		echo json_encode($this->login());
	}

	public function add_user()
	{
		$this->setEmail($this->input->post("email"));
		$this->setPassword($this->input->post("password"));

		echo json_encode($this->register());
	}

	public function logout()
	{
		session_destroy();
		redirect(base_url());
	}

}
