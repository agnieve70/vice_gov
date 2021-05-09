<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include "./application/controllers/classes/Garbage_class.php";
// include "./system/core/Controller.php";

class Reports extends Garbage_class
{

    public function __construct()
    {
        parent::__construct();
    }

	public function loadReportsTable()
	{
		echo json_encode($this->getGarbages());
		exit();
	}
}
