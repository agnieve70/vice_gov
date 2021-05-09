<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require "./application/controllers/interfaces/interface_garbage.php";
include "./application/models/Garbage_model.php";

class Garbage_class extends CI_Controller implements interface_garbage
{
	private $area_id, $garbage_weight;
	private $garbage_mdl;

	public function __construct()
	{
		parent::__construct();
		$this->garbage_mdl = new Garbage_model();
	}

	public function setGarbage($area_id, $garbage_weight)
	{
		$this->area_id = $area_id;
		$this->garbage_weight = $garbage_weight;
	}

	public function getAreaId(): int
	{
		return $this->area_id;
	}

	public function getGarbageWeight(): string
	{
		return $this->garbage_weight;
	}

	public function getGarbage($garbage_id)
	{
		
	}

	public function getGarbages()
	{
		
	}

	public function collectGarbage()
	{
		$result = $this->garbage_mdl->collectGarbage(array(
			"area_id" => $this->getAreaId(),
			"user_id" => $this->session->user_id,
			"weight" => $this->getGarbageWeight()
		));
		if($result)
		{
			return array("result"=> true, "message"=> "Successfully saved!");
		}
		return array("result"=> false, "message" => "something went wrong while saving");
	}

	public function getGarbageCollector($garbage_id)
	{
		
	}

}
