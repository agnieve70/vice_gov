<?php $this->load->view('templates/header'); ?>

<?php $this->load->view('templates/admin_navbar'); ?>

<div class="container">
<div class="main"><br>
	<div class="alert alert-dismissible alert-success">
	<h4 class="alert-heading">Garbage CollecT Monitoring System</h4>
	<p class="mb-0">Best check yo self, you're not looking too good. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, <a href="#" class="alert-link">vel scelerisque nisl consectetur et</a>.</p>
	</div>

	<?php $this->load->view('admin_dashboard/graph_overall'); ?>

	<?php $this->load->view('admin_dashboard/graph_by_barangay'); ?>

	<?php $this->load->view('admin_dashboard/admin_map') ?>
</div>
</div>



<?php $this->load->view('templates/footer'); ?>
<script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAFGkPnKplqx55cu6RA_tVY9xdypd8YDZg&libraries=&v=weekly"
      async defer>
</script>
<script src="<?=base_url("support/js/admin_dashboard.js")?>" type="module"></script>
