 // JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.


// Warm Up
// now we are warmed up

// Bulk Up
var test = [person]
var person = {
  name: "Jackie Chan",
  event: "Chinatown",
  win: ""
}

function addWin(person){
  for(i = 0; i < person.length; i++){
    person[i].win = person[i].name + " won at " + person[i].event + "!";
  }
  console.log(person.win);
}

//Jumble your words

function reverser(wordstring){
  var i = wordstring.length-1;
  var newword = "";
  while (i >= 0){
    newword += wordstring.charAt(i)
    i--;
}
  return newword;
}
reverser("this is a test");


//2,4,6,8

function isEven(numarray){
  var even = [];
  for(var i=0; i < numarray.length; i++) {
    if( numarray[i] % 2 == 0){
      even.push(numarray[i]);
    }
  }
  return even;
}
var testthis = [1,2,3,4,5,6,7,7,7,7,8]
isEven(testthis);

//"We built this city"
function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection
/*
What JavaScript knowledge did you solidify in this challenge?
- I learned a lot on loops, creating variables, and javascript syntax

What are constructor functions?
- constructers are functions that set default values for when an object is created

How are constructors different from Ruby classes (in your research)?
- the differenes is that instead of initalize it is the name of the class/object you are creating
  also insted of the @instance variable you use "this" keyword to reference the object.
*/