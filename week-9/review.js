// 9.2.2 Translate Ruby to JavaScript
// Problem 5.3 Caclculate the Mode

// PSEUDOCODE
/*
  step1: declare OBJECT and ARRAY VARS
  step2: ITERATE through array and create KEYS for the object
         initialize to 0 values
  step3: ITERATE through ARRAY and INCREMENT value and match keys occrance by 1
  step4: LOOP through object to determine the most frequent values
         IF the object value is GREATER THAN frequency
            reset freq array
            add new key value to array
         ELSE IF value equals the freq
            add it to the array
  step5: return the frequency array
*/

function mode(array) {
  // declare empty object to store keys and freq array for later
  var values = {};
  var freq = [0];

  // loop through element in array and create keys in values object
  array.forEach(function(element) {
    values[element] = 0;
  });

  // loop through array and increment by one for each key matched
  array.forEach(function(element) {
    values[element]++;
  });

  // loop through object and check scenarios to find the mode
  for (var key in values) {
    if (values[key] > freq[0]) {
      freq = []
      freq.push(key);
    }
    else if (values[key] == freq[0])
      freq.push(key);
  }
 return freq;
}

mode([5, 7, 5, 3, 0, 2, 1]);
mode([2, 2, 5, 5, 6, 7]);

/* REFLECTION
What concepts did you solidify in working on this challenge?
- I learned about JavaScript hashes, arrays, iterators and functions

What was the most difficult part of this challenge?
- Accessing the object values were killing me. It took me a while but I figrued it out and changed from dot notation to brackets.

Did you solve the problem in a new way this time?
- Similar way but when refactoring I could only find a handful of functions to use.

Was your pseudocode different from the Ruby version? What was the same and what was different?
- It was very similar but I used JavaScript syntax. The difference was I used a for in iterator to iterate through the object.
*/