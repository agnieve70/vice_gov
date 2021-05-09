// navbar active
const base_url = window.location.origin;

$('#collect_garbage').addClass("active");

$(document).ready(function()
{
	let scanner = new Instascan.Scanner({ video: document.getElementById('preview') });
		scanner.addListener('scan', function (content)
		{
			$('#content').val(content);
			$('#CollectGarbageModal').modal('show');
		});

		$('#btnSave').click(function()
		{
			const name = $('#name').val();
			const content = $('#content').val();

			$.ajax({
				url: `${base_url}/collect_garbage/saveCollectedGarbage`,
				method: 'post',
				data: {garbage: name, area_id: content},
				dataType: 'json',
				success: function(data)
				{
					if(data.result === true)
					{
						swal("Success", "Garbage Collected successfully", "success");
						$('#CollectGarbageModal').modal('hide');
					}
					swal("Saving Failed", `${err}`, "error");
				},
				error: function(err)
				{
					swal("Saving Failed", `${err}`, "error");
				}
			});
		})

		Instascan.Camera.getCameras().then(function (cameras) {
			if (cameras.length > 0) {
				scanner.start(cameras[1]);
			} else {
				alert('No cameras found.');
			}
			}).catch(function (e) {
			alert(e);
		});

});

