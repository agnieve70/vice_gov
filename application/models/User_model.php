<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include "./system/core/Model.php";

class User_model extends CI_Model{

	public function __construct()
	{
		parent::__construct();
	}
	public function login($email, $password)
	{
		$email_res = $this->db->select('*')
		->from('user')
		->where('email', $email)
		->get();

		if($email_res->result())
		{
			if(password_verify($password, $email_res->result()[0]->password ))
			{
				return array("res" => true, "data" => $email_res->result()[0]);
			}
			return array("res" => false);
		}

		return array("res" => false);
	}

	public function register($data) : int
	{
		$this->db->insert('user',$data);
		return  $this->db->insert_id();
	}
}
