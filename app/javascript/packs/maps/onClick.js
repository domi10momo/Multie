// const { Button } = require("bootstrap");

document.addEventListener('DOMContentLoaded', function () {
  var btns = document.querySelectorAll('input');
  for (var i = 0; i < btns.length; i++) {
    btns[i].addEventListener('click', function () {
      this.style.color = 'blue';
      makePin(map, this.value, geocoder);
    }, false);
  }
})