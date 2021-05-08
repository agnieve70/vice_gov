<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include "./system/core/Model.php";

class Collectors_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
    }

	public function getCollectors()
	{
		$this->db->select('*')
		->from("user")
		->where("user_type", 1);

		if(isset($_POST["search"]["value"]))
		{
			$this->db->like("email", $_POST["search"]["value"]);
		}

		if($_POST['length'] != -1)
		{
			$this->db->limit($_POST["length"], $_POST["start"]);
		}

		$query = $this->db->get();
		return $query->result();
	}

	public function getTotalCollectors()
	{
		$query = $this->db->select('*')
		->from("user")
		->where("user_type", 1)
		->get();

		return $query->num_rows();
	}

}
