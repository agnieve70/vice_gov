<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require "./application/controllers/interfaces/interface_collectors.php";
include "./application/models/Collectors_model.php";

class Collectors_class extends CI_Controller implements interface_collectors
{
	private $collectors_mdl;
	public function __construct()
	{
		parent::__construct();
		$this->collectors_mdl = new Collectors_model();
	}
	public function getCollectors()
	{

		$result = $this->collectors_mdl->getCollectors();
		$data = array();
		foreach($result as $row)
		{
			$data[] = array(
				$row->user_id,
				$row->email,
				$row->password,
				$row->user_type
			);
		}

		$output = array(
			"draw" => intval($_POST["draw"]),
			"recordsTotal" => $this->getTotalCollectors(),
			"recordsFiltered" => $this->getTotalCollectors(),
			"data" => $data
		);

		return $output;
	}

	public function getTotalCollectors()
	{
		return $this->collectors_mdl->getTotalCollectors();
	}

}
