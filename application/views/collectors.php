<?php $this->load->view('templates/header'); ?>

<?php $this->load->view('templates/admin_navbar'); ?>

<div class="container">
<div class="main"><br>
	<div class="alert alert-dismissible alert-success">
	<h4 class="alert-heading">Collectors</h4>
	<p class="mb-0">Best check yo self, you're not looking too good. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, <a href="#" class="alert-link">vel scelerisque nisl consectetur et</a>.</p>
	</div>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">

			<button class="btn btn-primary">Add New Collector <i class="fa fa-user-plus"></i></button>

			<div class="collapse navbar-collapse" id="navbarColor01">
			<ul class="navbar-nav me-auto">

			</ul>
			<form class="d-flex">
				<input class="form-control me-sm-2" type="text" placeholder="Search">
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


<script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAFGkPnKplqx55cu6RA_tVY9xdypd8YDZg&callback=initMap&libraries=&v=weekly"
      async>
</script>
<script src="<?=base_url("support/js/admin_dashboard.js")?>"></script>
<?php $this->load->view('templates/footer'); ?>
