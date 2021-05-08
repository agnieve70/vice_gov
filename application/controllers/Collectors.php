<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include "./application/controllers/classes/Collectors_class.php";
// include "./system/core/Controller.php";

class Collectors extends Collectors_class
{

    public function __construct()
    {
        parent::__construct();
    }

	public function loadCollectorsTable()
	{
		echo json_encode($this->getCollectors());
		exit();
	}
}
