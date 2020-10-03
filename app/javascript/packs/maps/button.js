gon.spots.forEach(spot => {
  console.log(spot)
  var spotButton = document.createElement('input');
  spotButton.type = 'button';
  spotButton.class = "col-md-3"
  spotButton.id = spot.id;
  spotButton.value = spot.name;
  document.body.appendChild(spotButton);
});

// const spotClass = document.getElementsByClassName('spotname');
// console.log(spotClass)
// const spotName = spotClass[1].textContent;
// console.log(spotName)

// const spotButton = document.createElement('input');
// spotButton.type = 'button';
// spotButton.id = `${gon.spots.id}`;
// spotButton.value = gon.spots.name;
// document.body.appendChild(spotButton);