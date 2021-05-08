<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require "./application/controllers/interfaces/interface_area.php";
include "./application/models/Area_model.php";

class Area_class extends CI_Controller implements interface_area
{
	private $area_mdl;
	private $lat, $lng, $land_mark;

	public function __construct()
	{
		parent::__construct();
		$this->area_mdl = new Area_model();
	}

	public function setLocation($lat, $lng, $land_mark)
	{
		$this->lat = $lat;
		$this->lng = $lng;
		$this->land_mark = $land_mark;
	}

	public function getLat() : float
	{
		return $this->lat;
	}

	public function getLng(): float
	{
		return $this->lng;
	}

	public function getLand_mark(): string
	{
		return $this->land_mark;
	}

	public function addArea(): bool
	{
		return true;
	}
}
