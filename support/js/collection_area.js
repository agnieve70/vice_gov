
import {collection_area_module} from "./modules/collection_area_module.js";

// navbar active
$('#collection_area').addClass("active");


$(document).ready(function()
{
	const map = new collection_area_module();
	map.initMap();

	$('#formArea').submit(function(e){
		e.preventDefault();

		alert("payts");

		
	})
});
