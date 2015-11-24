// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


// Add your JavaScript calls to this page:

// Release 0:
var el = document.getElementById('release-0');
var att = document.createAttribute("class");
att.value = "done";
el.setAttributeNode(att);

// Release 1:
document.getElementById("release-1").style.display = "none";

// Release 2:
var el = document.querySelector('h1');
el.textContent = "I finished release 2!";

// Release 3:
var ek = document.getElementById('release-3');
ek.style.backgroundColor = "#955251";


// Release 4:
var elements = document.getElementsByClassName('release-4');

for (var i = 0; i < elements.length; i++) {
  var element = elements[i];
  element.style.fontSize = "2em";
}


// Release 5:
var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));

