// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var first = 0;
console.log(first);
var first = 15;
console.log(first);

// Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey!That's my favorite too!" (You will probably need to run this in the Chrome console (Links to an external site.) rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.
prompt("What is your favortie food?");
console.log("Hey! That's my favorite food too!");


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
// Looping a triangle
var tri = "#";
for(var i = 0; i < 6; i++) {
  console.log(tri);
  tri = tri + "#";
}

// Functions
// Complete the `minimum` exercise.
function min(one, two) {
  if (one < two)
    return one;
  else
    return two;
}

min(10, 15);

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
  name: "Pratik Shah",
  age: 28,
  fav_food: "Pad Thai",
};