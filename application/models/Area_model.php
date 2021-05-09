<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include "./system/core/Model.php";

class Area_model extends CI_Model
{
	public function __construct()
	{
		parent::__construct();
	}

	public function addArea($data)
	{
		$this->db->insert('area',$data);
		return ($this->db->insert_id()) ? $this->db->insert_id() : 0;
	}

	public function getAreas()
	{
		$query = $this->db->select('*')
		->from('area')
		->get();

		return $query->result();
	}

	public function getBarangays()
	{
		$query = $this->db->distinct()
		->select('barangay')
		->from('purok')
		->get();

		return $query->result();
	}
}
