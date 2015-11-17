// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
/*
iterate through the votes hash/object
  for the appropriate position for each voter, in voteCount, include the name as a key, and add 1 onto the value.
whoever has the highest vote for president, is assigned president in voteCount, etc.
*/
// __________________________________________
// Initial Solution

for (var key in votes){                                 //vote is the key
  voteCount.president[votes[key].president] = 0;        // voteCount.president[voteName] = 0  initialize everyone to 0
  voteCount.vicePresident[votes[key].vicePresident] = 0;
  voteCount.secretary[votes[key].secretary] = 0;
  voteCount.treasurer[votes[key].treasurer] = 0;
}
for (var key in votes){
  voteCount.president[votes[key].president]++;      // voteCount.president[voteName]++  add one vote to the votedName
  voteCount.vicePresident[votes[key].vicePresident]++;
  voteCount.secretary[votes[key].secretary]++;
  voteCount.treasurer[votes[key].treasurer]++;
}
for (var officerPosition in voteCount) {              // loop through voteCount
  var max = 0;                                        // set highest vote count to 0
  var person_max = "";                                // set winning person name to nothing
  if (voteCount.hasOwnProperty(officerPosition)) {    // if office position exists inside the voteCount run the loop
    for (var person in voteCount[officerPosition]) {  //loop through the data in the second object in voteCount
      if (voteCount[officerPosition].hasOwnProperty(person)) {  //if person was voted for then
        if (voteCount[officerPosition][person] > max) {        // check to see if his/her vote is > the max
          max = voteCount[officerPosition][person];            // if it is greater then his/her vote = new max
          person_max = person;                                 // the new person is the winner
        }
      }
      officers[officerPosition] = person_max;                  // set the highest voted person
    }
  }
}


// __________________________________________
// Refactored Solution

for (var key in votes){                 // loop through votes object
  for (var position in votes[key]){     // loop through each voter's object data of votes
    voteCount[position][key] = 0;       //  set the peron's key value in voteCount to 0
  }
}

for (var key in votes) {                //access key in votes object
  for (var position in votes[key]) {    //access the key's object
    var nominee = votes[key][position]; //store the name of the person being voted
    voteCount[position][nominee]++;     //add one to the voted name
  }
}


for (var officerPosition in voteCount) {      // access the keys in voteCount
  var max = 0;
  var voted_max = "";
  for (var person in voteCount[officerPosition]) {              // access position object
      var person_votes = voteCount[officerPosition][person];    // access the # of votes
     if (person_votes > max) {                                  // if the votes are larger than current max
        max = voteCount[officerPosition][person];               // set the votes to a new max
        voted_max = person;           }                         // this person is now the winner
  }
  officers[officerPosition] = person_max;
}


// __________________________________________
// Reflection
/*

What did you learn about iterating over nested objects in JavaScript?
- it is tough and complicated! The for-in loop is a must but you have to go line by line to see that the information
you want is being accessed. This is why you see a lot of comments in the code as there are so many nested for and if
statements.

Were you able to find useful methods to help you with this?
- Not really. We basically stuck to for-in loops and ifs to accomplish the task.

What concepts were solidified in the process of working through this challenge?
- The bracket notation for objects. This exercise was a workout for that. I need to go back and still review the code
as each time it takes me a while to map out the data object that needs to be accessed. I wish there were videos online
but I could not find anything.

*/
//__________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)