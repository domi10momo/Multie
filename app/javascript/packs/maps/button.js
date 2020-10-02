console.log(gon.spots)
const spotButton = document.createElement('input');
spotButton.type = 'button';
spotButton.id = `${gon.spots.id}`;
spotButton.value = gon.spots.name;
document.body.appendChild(spotButton);