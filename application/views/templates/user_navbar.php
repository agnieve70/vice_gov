<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="<?=base_url("users/vw_user_dashboard")?>">Garbage Collect</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarColor01">

      <ul class="navbar-nav me-auto">

				<li class="nav-item">
          <a id="collect_garbage" class="nav-link" href="<?=base_url("users/vw_user_dashboard")?>"> <i class="fa fa-trash"></i> Collect Garbage
          </a>
        </li>

        <!-- <li class="nav-item">
          <a id="collect_garbage" class="nav-link" href="<?=base_url("users/vw_collect_garbage")?>"> <i class="fa fa-trash"></i> Collect Garbage
          </a>
        </li> -->

				<li class="nav-item">
          <a id="reports" class="nav-link" href="<?=base_url("users/vw_reports")?>"> <i class="fa fa-file"></i> Reports
          </a>
        </li>

      </ul>
	  <ul class="navbar-nav ms-auto">
			<li class="nav-item dropdown ms-auto dropstart">
				<a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-user"></i> Profile</a>
				<div class="dropdown-menu align-right">
					<a class="dropdown-item" href="<?=base_url("users/vw_change_password")?>"><i class="fa fa-key"></i>	Change Password</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="<?=base_url("users/logout")?>"><i class="fa fa-sign-out"></i> Logout</a>
				</div>
			</li>
	  </ul>
	
    </div>
  </div>
</nav>
