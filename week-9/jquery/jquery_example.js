// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'}) // this code take the body seletor and changes the whole background to pink

//RELEASE 2:
  //Add code here to select elements of the DOM
$head = $('h1:first');

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
$head.css({'color': 'red'});
$head.css({'border': 'blue'});
$head.css({'visibility': 'visible'});
$('h1:first').html("ISLAND FOX")

//RELEASE 4: Event Listener
  // Add the code for the event listener here
$('img').on('click', function(e) {
  e.preventDefault();
  $(this).attr('src', "http://cdn2.arkive.org/media/E3/E30E3601-D986-46EE-B8BB-070248581318/Presentation.Large/Island-fox-sitting-on-rock.jpg");
  $(this).effect('bounce', {times:4}, 500);
});

//RELEASE 5: Experiment on your own

});  // end of the document.ready function: do not remove or write DOM manipulation below this.

/*

    What is jQuery?
    - its a javascript library with plenty of methods to help you webpages become more interactive

    What does jQuery do for you?
    - jQuery allows you to use simple code and processes the methods for you to create the effects and changes on your site. it is basically an API

    What did you learn about the DOM while working on this challenge?
    - getting to know the DOM is essential in navigating around the website.
*/