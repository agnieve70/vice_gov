

// navbar active
$('#collect_garbage').addClass("active");

function initMap() {
	const myLatlng = { lat: 6.7575, lng: 125.3524 };
	const map = new google.maps.Map(document.getElementById("map"), {
		zoom: 16,
		center: myLatlng,
	});
	// Create the initial InfoWindow.
	let infoWindow = new google.maps.InfoWindow({
		content: "Click the map to get Lat/Lng!",
		position: myLatlng,
	});
	infoWindow.open(map);
	// Configure the click listener.
	map.addListener("click", (mapsMouseEvent) => {
		// Close the current InfoWindow.
		infoWindow.close();
		// Create a new InfoWindow.
		infoWindow = new google.maps.InfoWindow({
			position: mapsMouseEvent.latLng,
		});
		const lat = mapsMouseEvent.latLng.toJSON();
		console.log(lat.lat);
		console.log(lat.lng);
		$('#lat').val(lat.lat);
		$('#long').val(lat.lng);
		const str = JSON.stringify(mapsMouseEvent.latLng.toJSON(), null, 2);
		infoWindow.setContent(
			`This will appear to your address location on profile \n
			`+ str
		);
		infoWindow.open(map);
	});
}
