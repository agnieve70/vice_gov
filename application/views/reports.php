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

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">


			<div class="collapse navbar-collapse" id="navbarColor01">
			<ul class="navbar-nav me-auto">

			</ul>
			<form class="d-flex">
				<input class="form-control" type="text" placeholder="From" style="margin-right:10px;"> 
				<input class="form-control" type="text" placeholder="to">
				<button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
			</form>
			</div>
		</div>
	</nav>
	<table class="table table-hover">
			<thead>
				<tr>
				<th scope="col">Type</th>
				<th scope="col">Column heading</th>
				<th scope="col">Column heading</th>
				<th scope="col">Column heading</th>
				</tr>
			</thead>
			<tbody>
				<tr class="table-light">
				<th scope="row">Active</th>
				<td>Column content</td>
				<td>Column content</td>
				<td>Column content</td>
				</tr>
			</tbody>
		</table>
</div>
</div>


<script src="<?=base_url("support/js/reports.js")?>"></script>
<?php $this->load->view('templates/footer'); ?>
