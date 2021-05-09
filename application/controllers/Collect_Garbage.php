<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include "./application/controllers/classes/Garbage_class.php";
// include "./system/core/Controller.php";

class Collect_Garbage extends Garbage_class
{

    public function __construct()
    {
        parent::__construct();
    }

	public function saveCollectedGarbage()
	{
		$area_id = $this->input->post('area_id');
		$garbage = $this->input->post('garbage');

		$this->setGarbage($area_id, $garbage);
		echo json_encode($this->collectGarbage());
		exit();
	}

}
