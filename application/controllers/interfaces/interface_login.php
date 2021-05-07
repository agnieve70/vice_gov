<?php
defined('BASEPATH') OR exit('No direct script access allowed');

interface interface_login {

	public function login();
	public function register();
	public function setEmail($email);
	public function setPassword($password);
	public function getEmail(): String;
	public function getPassword() : String;
}
