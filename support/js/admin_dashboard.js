import {collection_area_module} from "./modules/collection_area_module.js";

//navbar active
$('#dashboard').addClass("active");

$(document).ready(function()
{
	const map = new collection_area_module(map);
	map.initMap();
});
