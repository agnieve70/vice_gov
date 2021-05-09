import  {base_url} from  "./main.js";

export class collection_area_module {

	constructor(map)
	{
		this.map = map;
	}

	getBarangays()
	{
		$.ajax({
			url: `${base_url}/area/loadBarangays`,
			method: 'get',
			dataType: 'json',
			success: function(data)
			{
				let html = '';
				for(let i = 0; i < data.length; i++)
				{
					html+= `<option value="${data[i].barangay}">${data[i].barangay}</option>`;
				}
				$('#barangay').html(html);
			},
			error: function(err)
			{
				console.log(err);
			}
		});
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

		$.ajax({
			url : `${base_url}/area/loadAreas`,
			dataType: 'json',
			method : 'get',
			success: function(data)
			{
				for(let i =0; i < data.length; i++)
				{
					let latLng = {lat : parseFloat(data[i].latitude), lng: parseFloat(data[i].longtitude)};
					let marker = new google.maps.Marker({
						position: latLng,
						icon: `${base_url}/support/image/icon.png`,
						title:`${data[i].land_mark}`
					});
					marker.setMap(map);

					marker.addListener("click", () => {

						$('#latitude').val(data[i].latitude);
						$('#longtitude').val(data[i].longtitude);

						infoWindow.close();
						infoWindow.setContent(`
							${marker.getTitle()} <br>
							<a class="btn btn-primary btn-sm" target="_blank" href="${base_url}/support/image/qr/${data[i].area_id}.png">Download QR <i class="fa fa-download"></i></a>
						`);
						infoWindow.open(marker.getMap(), marker);
					});
				}
			}
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
			url : `${base_url}/area/saveAreaToDatabase`,
			method: 'post',
			data: formData,
			dataType: 'json',
			success: function(result)
			{
				if(result.result)
				{
					swal("Success", "New Area was successfully added!", "success")
					.then(()=> {
						window.location.replace(`${base_url}/users/vw_collection_area`);
					});
				}
			},
			error: function(err)
			{
				console.log(err);
			}
		});
	}

}
