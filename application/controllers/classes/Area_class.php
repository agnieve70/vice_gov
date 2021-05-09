<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require "./application/controllers/interfaces/interface_area.php";
include "./application/models/Area_model.php";

class Area_class extends CI_Controller implements interface_area
{
	private $area_mdl;
	private $lat, $lng, $land_mark, $barangay;

	public function __construct()
	{
		parent::__construct();
		$this->area_mdl = new Area_model();
		$this->load->library('ciqrcode');
	}

	public function setLocation($lat, $lng, $land_mark, $barangay)
	{
		$this->lat = $lat;
		$this->lng = $lng;
		$this->land_mark = $land_mark;
		$this->barangay = $barangay;
	}

	public function getLat() : float
	{
		return $this->lat;
	}

	public function getLng(): float
	{
		return $this->lng;
	}

	public function getBarangay()
	{
		return $this->barangay;
	}

	public function getLand_mark(): string
	{
		return $this->land_mark;
	}

	public function addArea()
	{
		$result = $this->area_mdl->addArea(
			array(
				"latitude" => $this->getLat(),
				"longtitude" => $this->getLng(),
				"land_mark" => $this->getLand_mark(),
				"barangay" => $this->getBarangay()
			)
		);

		if($result)
		{
			$params['data'] = $result;
			$params['level'] = 'H';
			$params['size'] = 10;
			$params['savename'] = FCPATH.'/support/image/qr/'.$result.'.png';
			$this->ciqrcode->generate($params);

			return array("result" => true);
		}
		return $result;
	}

	public function getAreas()
	{
		$result = $this->area_mdl->getAreas();
		return $result;
	}

	public function getBarangays()
	{
		$result = $this->area_mdl->getBarangays();
		return $result;
	}
}
