<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include "./system/core/Model.php";

class Garbage_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
    }

	public function collectGarbage($data)
	{
		$this->db->insert('collect',$data);
		return  $this->db->insert_id();
	}

	public function getGarbages()
	{
		$query = $this->db->select('*')
		->from('collect')
		->join('user', 'user.user_id = collect.user_id')
		->join('area', 'area.area_id = collect.area_id')
		->get();

		return $query->result();
	}

	public function getTotalGarbageCollected()
	{
		$query = $this->db->select('*')
		->from('collect')
		->get();

		return $query->num_rows();
	}
}
