const { Button } = require("bootstrap");

document.addEventListener('DOMContentLoaded', function () {
  var btns = document.querySelectorAll('.icon-btn');
  for (var i = 0; i < btns.length; i++) {
    btns[i].addEventListener('click', function () {
      alert('クリックされたよ！');
      console.log(document.spot.value)
      this.style.color = 'blue';
    }, false);
  }
}, false);