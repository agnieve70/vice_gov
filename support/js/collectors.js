import {collectors_table_module} from "./modules/collectors_table_module.js";
// navbar active
$('#collectors').addClass("active");


$(document).ready(function() {
	const collectors_obj = new collectors_table_module("collectorsTable");
	collectors_obj.loadCollectorsTable();
} );
