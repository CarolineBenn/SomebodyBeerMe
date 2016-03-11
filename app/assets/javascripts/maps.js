
function initialize() {
  var mapCanvas = document.getElementById('map');
  var mapOptions = {
    center: new google.maps.LatLng(51.52, -0.08),
    zoom: 15,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  }
  var map = new google.maps.Map(mapCanvas, mapOptions);

  
  var marker = new google.maps.Marker({
      map: map,
      position: {lat: 51.52, lng: -0.08},
      label: '1'
    });

}

google.maps.event.addDomListener(window, 'load', initialize);