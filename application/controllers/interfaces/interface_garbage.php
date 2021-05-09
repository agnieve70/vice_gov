<?php
defined('BASEPATH') OR exit('No direct script access allowed');

interface interface_garbage {

	public function getAreaId(): int;
	public function getGarbageWeight(): String;
	public function setGarbage($garbage_id, $garbage);
	public function getGarbages();
	public function getGarbage($garbage_id);
	public function getGarbageCollector($garbage_id);
	public function collectGarbage();
	public function getTotalGarbageCollected();
}
