<?php $this->load->view('templates/header'); ?>

<?php $this->load->view('templates/user_navbar'); ?>


<div class="container">
<div class="main"><br>
	<div class="alert alert-dismissible alert-danger">
	<h4 class="alert-heading">Collect Garbages</h4>
	<p class="mb-0">Best check yo self, you're not lookingdo cursus magna, vel scelerisque nisl consectetur et</p>
	</div>

</div>
</div>

<script src="https://rawgit.com/schmich/instascan-builds/master/instascan.min.js"></script>
<script src="<?=base_url("support/js/collect_garbage.js")?>"></script>
<?php $this->load->view('templates/footer'); ?>
