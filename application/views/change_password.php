<body style="background-color:#222222">

<?php $this->load->view('templates/header'); ?>

	<div class="container">

		<div class="row" style="margin-top:150px;">
			<div class="col-md-4"></div>

			<div class="col-md-4">
				<div class="card">
				<div class="card-header bg-danger">
					<h4 class="text-center text-white">Change Password <i class="fa fa-key"></i></h4>
				</div>
				<div class="card-body">
					<form action="" method="post" id="loginForm">
						<div class="form-group">
							<div class="form-floating mb-2">
								<input type="password" name="password" class="form-control" id="password" placeholder="Password">
								<label for="password">Old Password</label>
							</div>
							<div class="form-floating mb-2">
								<input type="password" name="password" class="form-control" id="password" placeholder="Password">
								<label for="password">New Password</label>
							</div>
							<div class="d-grid gap-2">
								<button type="submit" class="btn btn-danger">Change Password</button>
								<p>Back  to <a href="<?=base_url("users/vw_register")?>">Login</a></p>
							</div>
						</div>
					</form>
				</div>
				</div>
			</div>
			<div class="col-md-4"></div>
		</div>
	</div>

	<script src="<?=base_url("support/js/users.js")?>" type="module"></script>
<?php $this->load->view('templates/footer'); ?>
