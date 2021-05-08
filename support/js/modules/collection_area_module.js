import  {base_url} from  "./main.js";

export class collection_area_module {

	constructor(map)
	{
		this.map = map;
	}

	initMap() {

		const myLatlng = { lat: 6.7575, lng: 125.3524 };
		const map = new google.maps.Map(document.getElementById("map"), {
			zoom: 16,
			center: myLatlng,
		});

		let infoWindow = new google.maps.InfoWindow({
			content: "Click the map to get Lat/Lng!",
			position: myLatlng,
		});


		map.addListener("click", (mapsMouseEvent) =>
		{
			infoWindow.close();
			infoWindow = new google.maps.InfoWindow({
				position: mapsMouseEvent.latLng,
			});
			const loc = mapsMouseEvent.latLng.toJSON();

			$('#latitude').val(loc.lat);
			$('#longtitude').val(loc.lng);

			const str = JSON.stringify(mapsMouseEvent.latLng.toJSON(), null, 2);
			infoWindow.setContent(
				`Your Mark is Here`
			);
			infoWindow.open(map);

		});

	}

	addArea(formData)
	{
		$.ajax({
			url : `${base_url}/area/addArea`,
			data: formData,
			dataType: 'json',
			success: function(result)
			{
				console.log(result);
			},
			error: function(err)
			{

			}
		});
	}
}
