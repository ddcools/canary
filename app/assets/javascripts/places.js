// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

function close_latlng_selector() {
	$('#latlng_modal').modal('hide');
}


var map;
var markers = [];
var myCenter = new google.maps.LatLng(53, -1.33);
var marker = new google.maps.Marker({
	position: myCenter
});


function placeMarkerAndPanTo(latLng, map) {
	deleteMarkers(map);
	var marker = new google.maps.Marker({
		position: latLng,
		map: map
	});
	map.panTo(latLng);
	markers.push(marker);
}

function deleteMarkers(map) {
	for (var i = 0; i < markers.length; i++) {
		markers[i].setMap(null);
	}
	markers = [];
}



function initialize_map() {
	var mapProp = {
		center: myCenter,
		zoom: 14,
		draggable: true,
		scrollwheel: true,
		mapTypeId: google.maps.MapTypeId.ROADMAP
	};

	map = new google.maps.Map(document.getElementById("map-canvas"), mapProp);
	map.addListener('click', function(e) {
		placeMarkerAndPanTo(e.latLng, map);		
		$("#place_lat").val(e.latLng.lat());
		$("#place_lng").val(e.latLng.lng());
	});
}


google.maps.event.addDomListener(window, "resize", resizingMap());

$('#latlng_modal').on('show.bs.modal', function() {
	resizeMap();
})

function resizeMap() {
	if (typeof map == "undefined") return;
	setTimeout(function() {
		resizingMap();
	}, 400);
}

function resizingMap() {
	if (typeof map == "undefined") return;
	var center = map.getCenter();
	google.maps.event.trigger(map, "resize");
	map.setCenter(center);
}