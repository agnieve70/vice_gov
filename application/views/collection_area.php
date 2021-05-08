<?php $this->load->view('templates/header'); ?>

<?php $this->load->view('templates/admin_navbar'); ?>


<div class="container">
<div class="main"><br>
	<div class="alert alert-dismissible alert-danger">
	<h4 class="alert-heading">Collection Area based on Map</h4>
	<p class="mb-0">Best check yo self, you're not looking too good. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et</p>
	</div>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">

			<div class="collapse navbar-collapse" id="navbarColor01">
			<ul class="navbar-nav me-auto">

			</ul>
			<form class="d-flex">
				<div class="form-floating me-sm-1">
					<input type="email" class="form-control me-sm-2" id="floatingInput" placeholder="name@example.com">
					<label for="floatingInput">Latitude</label>
				</div>

				<div class="form-floating me-sm-1">
					<input type="email" class="form-control me-sm-2" id="floatingInput" placeholder="name@example.com">
					<label for="floatingInput">Longtitude</label>
				</div>

				<div class="form-floating me-sm-1">
					<input type="email" class="form-control me-sm-2" id="floatingInput" placeholder="name@example.com">
					<label for="floatingInput">Land Mark</label>
				</div>
				<button class="btn btn-secondary my-2 my-sm-0" type="submit">Save</button>
			</form>
			</div>
		</div>
	</nav>
	<div id="map" style="width:100%;height:400px;"></div>

</div>
</div>

<script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAFGkPnKplqx55cu6RA_tVY9xdypd8YDZg&callback=initMap&libraries=&v=weekly"
      async>
</script>
<script src="<?=base_url("support/js/collection_area.js")?>"></script>
<?php $this->load->view('templates/footer'); ?>
