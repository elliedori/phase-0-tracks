var photos = document.getElementsByTagName("img");
artsyPhoto = photos[0];
launchPhoto = photos[1];

console.log(artsyPhoto);
console.log(launchPhoto);
artsyPhoto.style.border = "10px dotted pink";
launchPhoto.style.border = "10px yellow";
launchPhoto.style.borderStyle = "dotted dashed solid double";

var title = document.getElementById("title");
title.style.fontSize = "5em";

var subtitle = document.getElementById("subtitle");
subtitle.style.fontSize = "3em";

var body = document.getElementById("body");
body.style.backgroundColor = "orange";

function colorChanger(event) {
  console.log("We clicked this!")
  console.log(event);
  event.target.style.border = "10px solid blue";
}

launchPhoto.addEventListener("click", colorChanger);



