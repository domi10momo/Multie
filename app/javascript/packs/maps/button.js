var div = document.createElement('div');
div.className = 'col-md-3'
document.body.appendChild(div);

gon.spots.forEach(spot => {
  var spotButton = document.createElement('input');
  spotButton.type = 'button';
  //spotButton.className = 'col-md-3';
  spotButton.id = spot.id;
  spotButton.value = spot.name;
  div.appendChild(spotButton);
});