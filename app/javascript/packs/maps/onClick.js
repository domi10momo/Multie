const { Button } = require("bootstrap");

document.addEventListener('DOMContentLoaded', function () {
  var btns = document.querySelectorAll('input');
  for (var i = 0; i < btns.length; i++) {
    btns[i].addEventListener('click', function () {
      alert(this.value);
      console.log(this.value)
      this.style.color = 'blue';
    }, false);
  }
}, false);