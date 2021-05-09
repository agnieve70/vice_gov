<?php $this->load->view('templates/header'); ?>

<?php $this->load->view('templates/user_navbar'); ?>

<video id="preview" class="container"></video>

<div class="container">
<div class="main"><br>
	<div class="alert alert-dismissible alert-danger">
	<h4 class="alert-heading">Collect Garbages</h4>
	<p class="mb-0">Best check yo self, you're not lookingdo cursus magna, vel scelerisque nisl consectetur et</p>
	</div>

</div>
</div>

<div class="modal" id="CollectGarbageModal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Collect Garbage</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
          <span aria-hidden="true"></span>
        </button>
      </div>
      <div class="modal-body">
			<input type="hidden" name="content" class="form-control" id="content" placeholder="name@example.com">
	  		<div class="form-floating mb-2">
				<input type="text" name="name" class="form-control" id="name" placeholder="name@example.com">
				<label for="name">Garbage Weight (Kg.)</label>
			</div>
		<button class="btn btn-primary" id="btnSave">Save</button>
      </div>
    </div>
  </div>
</div>


<?php $this->load->view('templates/footer'); ?>

<script src="https://rawgit.com/schmich/instascan-builds/master/instascan.min.js"></script>
<script src="<?=base_url("support/js/collect_garbage.js")?>"></script>
