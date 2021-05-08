<?php
defined('BASEPATH') OR exit('No direct script access allowed');

interface interface_area
{
	public function setLocation($lat, $lng, $land_mark);
	public function getLat(): float;
	public function getLng(): float;
	public function getLand_mark(): String;
	public function addArea(): bool;
}
