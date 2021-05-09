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
}
