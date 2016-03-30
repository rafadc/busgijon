function markBus(x,y, line) {
  var xy = new Array(2);
  u2l.UTMXYToLatLon(x, y, 30, false, xy);

  var lat = u2l.RadToDeg(xy[0]);
  var lon = u2l.RadToDeg(xy[1]);

  var myLatlng = new google.maps.LatLng(lat, lon);

  var marker = new google.maps.Marker({
    position: myLatlng,
    map: map,
    title: 'Linea '+line
  });

  window.markers.push(marker);
}

function clearMarkers() {
  for (var i = 0; i < window.markers.length; i++) {
    window.markers[i].setMap(null);
  }
  window. markers = [];
}

export {markBus, clearMarkers}
