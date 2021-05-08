import {base_url} from "./main.js";

export class collectors_table_module {

	constructor(table_name)
	{
		this.table_name = table_name;
	}

	loadCollectorsTable()
	{
		$(`#${this.table_name}`).DataTable( {
			"processing": true,
			"serverSide": true,
			"order": [],
			"ajax": {
				"url" : `${base_url}/collectors/loadCollectorsTable`,
				"type": "POST"
			},
			columnDefs : [{
				targets: [0,1],
				orderable: false
			}],
			"deferRender": true,
			// "deferLoading": 57
		} );
	}

}
