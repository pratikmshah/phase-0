// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with:

// Pseudocode
/*
step1: create METHOD and take in int argument
step2: covert int to string and reverse
step3: LOOP through string by the length of string minus 3
       concatenate comma every 3rd value to variable
step4: reverse the string and return string
*/

Initial Solution
function separate_comma(number) {
  number = number.toString();
  var array = [];

  for(var i = 0; i < number.length; i++) {
    array[i] = number[number.length - i - 1];
  }

  for(var i = 0; i < array.length; i++) {
    if((i % 3 === 0) && (i != 0)){
        array[i] = array[i] + ",";
    }
  }

  number = ""
  for(var i = array.length - 1; i >= 0; i--) {
    number = number + array[i];

    console.log(number);
  }
}

// Refactored Solution
function separate_comma(number) {
  number = number.toString();
  var array = [];

  for(var i = 0; i < number.length; i++) {
    array[i] = number[number.length - i - 1];
  }

  for(var i = 0; i < array.length; i++) {
    if((i % 3 === 0) && (i != 0)){
        array[i] = array[i] + ",";
    }
  }
  number = array.reverse().join('').toString();
  console.log(number);
}

var test = 12345678;
separate_comma(test);

// Your Own Tests (OPTIONAL)

// Reflection
/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
- It was difficult at first because the syntax for using loops and variables were different. We approached the problem
  the same way we would in ruby and then tried to translate the ruby approch into javascript.

What did you learn about iterating over arrays in JavaScript?
- The for loop is much easier than the while and the do-while as the for loop allows you to initialize a local counter
  variable and increment it all in one line. The forEach method still trumps all the other iterators.

What was different about solving this problem in JavaScript?
- The big difference was that there weren't as many methods to use as there are in ruby also you had to be really careful
  of the syntax and make sure you have your semicolons and brackets.

What built-in methods did you find to incorporate in your refactored solution?
  - we used toString() to allow us to conver to a string easily.
  - reverse to allow us to automatically reverse the array
  - join to allow us to join the string.
*/