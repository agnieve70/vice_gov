import {reports_table_module} from "./modules/reports_table_module.js";

// navbar active
$('#reports').addClass("active");
$(document).ready(function() {
	const reports_obj = new reports_table_module("collectorsTable");
	reports_obj.loadReportsTable();
} );
