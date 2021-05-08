<?php $this->load->view('templates/header'); ?>

<?php $this->load->view('templates/admin_navbar'); ?>

<div class="container">
<div class="main"><br>
	<div class="alert alert-dismissible alert-success">
	<h4 class="alert-heading">Collectors</h4>
	<p class="mb-0">Best check yo self, you're not looking too good. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, <a href="#" class="alert-link">vel scelerisque nisl consectetur et</a>.</p>
	</div>

	<table class="table table-hover" id="collectorsTable">
			<thead>
				<tr>
				<th scope="col">#</th>
				<th scope="col">Email</th>
				<th scope="col">Password</th>
				<th scope="col">Usertype</th>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>

</div>
</div>

<script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.24/js/dataTables.bootstrap5.min.js"></script>
<script src="<?=base_url("support/js/collectors.js")?>"  type="module"></script>
<?php $this->load->view('templates/footer'); ?>
