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
				<div id="qrcode"></div>
			</ul>
			<form class="d-flex" method="post" id="formArea">
				<div class="form-floating me-sm-1">
					<input type="text" class="form-control me-sm-2" id="latitude" name="latitude" placeholder="name@example.com"  readonly>
					<label for="latitude">Latitude</label>
				</div>

				<div class="form-floating me-sm-1">
					<input type="text" class="form-control me-sm-2" id="longtitude" name="longtitude" placeholder="name@example.com" readonly>
					<label for="longtitude">Longtitude</label>
				</div>

				<div class="form-floating me-sm-1">
					<input type="text" class="form-control me-sm-2" id="land_mark" name="land_mark" placeholder="name@example.com">
					<label for="land_mark">Land Mark</label>
				</div>

				<div class="form-floating me-sm-1">
					<select class="form-control me-sm-2" id="barangay" name="barangay">
					</select>
					<label for="barangay">Barangay</label>
				</div>
				<button class="btn btn-secondary my-2 my-sm-0" type="submit">Save</button>
			</form>
			</div>
		</div>
	</nav>
	<div id="map" style="width:100%;height:400px;"></div>

</div>
</div>


<?php $this->load->view('templates/footer'); ?>
<script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAFGkPnKplqx55cu6RA_tVY9xdypd8YDZg&libraries=&v=weekly"
      async>
</script>
<script src="<?=base_url("support/js/collection_area.js")?>" type="module"></script>
