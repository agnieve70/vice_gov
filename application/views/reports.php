<?php $this->load->view('templates/header');

	if($this->session->user_type == 0)
	{
		$this->load->view('templates/admin_navbar');
	}
	else 
	$this->load->view('templates/user_navbar');
?>

<div class="container">
<div class="main"><br>
	<div class="alert alert-dismissible alert-info">
	<h4 class="alert-heading text-dark">Garbage Collection Report</h4>
	<p class="mb-0 text-dark">Best check yo self, you're not looking too good. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et</p>
	</div>
	<table class="table table-hover" id="collectorsTable">
		<thead>
			<tr>
			<th scope="col">#</th>
			<th scope="col">Collector</th>
			<th scope="col">Land Mark</th>
			<th scope="col">Weight</th>
			<th scope="col">Barangay</th>
			<th scope="col">Date Time</th>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
</div>
</div>


<?php $this->load->view('templates/footer'); ?>
<script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.24/js/dataTables.bootstrap5.min.js"></script>
<script src="<?=base_url("support/js/reports.js")?>" type="module"></script>
