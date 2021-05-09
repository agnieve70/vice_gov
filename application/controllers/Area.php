<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include "./application/controllers/classes/Area_class.php";
// include "./system/core/Controller.php";

class Area extends Area_class
{
    public function __construct()
    {
        parent::__construct();
    }

	public function saveAreaToDatabase()
	{
		$lat = $this->input->post('latitude');
		$lng = $this->input->post('longtitude');
		$land_mark = $this->input->post('land_mark');
		$barangay = $this->input->post('barangay');
		$this->setLocation($lat, $lng, $land_mark, $barangay);

		echo json_encode($this->addArea());
	}

	public function loadAreas()
	{
		echo json_encode($this->getAreas());
	}

	public function loadBarangays()
	{
		echo json_encode($this->getBarangays());
	}
}
