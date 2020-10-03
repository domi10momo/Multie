gon.spots.forEach(spot => {
  console.log(spot)
  var spotButton = document.createElement('input');
  spotButton.type = 'button';

  spotButton.id = spot.id;
  spotButton.value = spot.name;
  document.body.appendChild(spotButton);
});