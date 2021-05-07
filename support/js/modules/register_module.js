import {base_url} from "./main.js";

export class register_module {

	constructor(email, password)
	{
		this.email = email;
		this.password = password;
	}

	register()
	{
		$.ajax({
			url: `${base_url}/users/add_user`,
			data: {email: this.email, password: this.password},
			dataType: 'json',
			method: 'post',
			success: function(succ)
			{
				if(succ)
				{
					swal("Success", "New user was successfully registered!", "success")
					.then(()=> {
						window.location.replace(`${base_url}/`);
					});
				}
			},
			error: function(err)
			{
				return err;
			}
		});
	}
}
