<?php $this->load->view('templates/header'); ?>

<body style="background-color:#222222">

	<div class="container">

		<div class="row" style="margin-top:150px;">
			<div class="col-md-4"></div>

			<div class="col-md-4">
				<div class="card">
				<div class="card-header bg-success">
					<h4 class="text-center text-white">User Registration <i class="fa fa-user-plus"></i></h4>
				</div>
				<div class="card-body">
					<form action="" method="post" id="registerForm">
						<div class="form-group">
							<div class="form-floating mb-2">
								<input type="email" name="email" class="form-control" id="email" placeholder="name@example.com">
								<label for="email">Email address</label>
							</div>
							<div class="form-floating mb-2">
								<input type="password" name="password" class="form-control" id="password" placeholder="Password">
								<label for="password">Password</label>
							</div>
							<div class="d-grid gap-2">
								<button type="submit" class="btn btn-success">Register</button>
								<p>Already a member? Please <a href="<?=base_url('users/vw_login')?>">Login</a></p>
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
