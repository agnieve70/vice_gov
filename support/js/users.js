import {login_module} from './modules/login_module.js';
import {register_module} from './modules/register_module.js';

$(document).ready(function()
{
	$('#loginForm').submit(function(e)
	{
		e.preventDefault();
		const form  = $(this).serializeArray();

		const login_obj  = new login_module(form[0].value, form[1].value);
		login_obj.login();
	});

	$('#registerForm').submit(function(e)
	{
		e.preventDefault();
		const form = $(this).serializeArray();

		const register_obj = new register_module(form[0].value, form[1].value);
		register_obj.register();
	})
});
