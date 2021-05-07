import {base_url} from "./main.js";

export class login_module {

	constructor(email, password)
	{
		this.email = email;
		this.password = password;
	}

	login()
	{
		$.ajax({
			url : `${base_url}/users/validate`,
			data: {email: this.email, password: this.password},
			method: "post",
			dataType: 'json',
			success: function(succ)
			{
				if(succ)
				{
					swal("Login Success", "You will be directed to dashboard!", "success")
					.then(()=>
					{
						if(succ.user_type == 0)
						{
							window.location.replace(`${base_url}/users/vw_admin_dashboard`);
						}
						else
						{
							window.location.replace(`${base_url}/users/vw_user_dashboard`);
						}

					})
				}
				else
				{
					swal("Login Failed", "Email/Password no found!", "error");
				}
			},
			error: function(err)
			{
				swal("Login Failed", err, "error");
			}
		});
	}
}
