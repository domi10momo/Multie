// let showMap
// let geocoder = new google.maps.Geocoder()
// console.log('OK')
// console.log(document.getElementById('map'))

// showMap = new google.maps.Map(document.getElementById('map'), {
//   center: { lat: 37.9053235, lng: 139.0296194 },
//   zoom: 12.5,
// });
// var div = document.createElement('div');
// div.className = 'col-md-9';
// div.id = 'map_id';
// document.body.appendChild(div);

// var map = document.createElement('div');
// map.setAttribute('id', 'map');
// document.body.appendChild(map);

var map;
function initMap() {
  map = new google.maps.Map(document.getElementById('map_id'), {
    center: { lat: 37.9053235, lng: 139.0296194 },
    zoom: 12.5,
  });
}