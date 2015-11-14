// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: Game of War 2.0
// Overall mission: Win 50 rounds
// Goals: Just pray luck is on your side - this is automated simulated game no user input
//        - higher card wins round and takes oppenet's card adds to their deck
//        - lower card loses round and loses card
//        - if both cards are equal value then each opponent loses both 2 cards
// Characters: you and computer
// Objects: player, computer
// Functions: create & shuffle deck, start game, battle, stats

/* Pseudocode
step1: -create a 52 card deck
       -shuffle the deck and pass out 26 cards to player and computer
step2: -game starts with top card draw between player and cpu
       -calcualate which card is higher
       -push and dispose cards start new round
step3: -when somone wins 50 rounds they are the winner
       -display stats etc..
*/

// Initial Code
var deck = []; // create an empty array of deck(s)
var player = {  // player & computer objects hold deck and # rounds won
  deck: [],
  points: 0
};
var cpu = {
  deck: [],
  points: 0
};

startGame();    // this will call the startGame function and then the game is automatically simulated

// LIST OF FUNCTIONS
// create a brand new deck
function createDeck() {
 var number = ['A', 'K', 'Q', 'J', 'T', '9', '8', '7', '6', '5', '4', '3', '2'];
 var suits = ['♠', '♣', '♥', '♦'];

 for(var i = 0; i < number.length; i++){    // outter card ranks
   for(var j = 0; j < suits.length; j++){   // card suits
      deck.push(number[i] + suits[j]);      // push them all into one deck
    };
 };
}

// shuffle deck
function shuffle(cards) {
  for(var i = cards.length - 1; i > 0; i--) {
      var j = Math.floor(Math.random() * (i + 1));  // randomize element to be swapped
      var holding = cards[i];                       // hold current value of card position
      cards[i] = cards[j];                          // swap new card value
      cards[j] = holding;                           // complete swap by moving original value
  };
}

function playerDecks(cards) {                      // pass out alternating cards one to player then cpu
  for(var i = 0; i < cards.length; i++) {
    if( i % 2 == 0){
      player.deck.push(cards[i]);                  // even goes to player and odds go to cpu
    }
    else {
      cpu.deck.push(cards[i]);
    }
  };
}

function startGame() {
  var winCards = [];      // store cards for winners
  createDeck();
  shuffle(deck);
  playerDecks(deck);

  console.log(" __      __  _____ __________._._._.");
  console.log("/  \\    /  \\/  _  \\______   \\  | | |");
  console.log("\\   \\/\\/   /  /_\\  \\|       _/ | | |");
  console.log(" \\        /    |    \\    |   \\\\|\\|\\|");
  console.log("  \\__/\\  /\\____|__  /____|_  /______");
  console.log("       \\/         \\/       \\/ \\/\\/\\/\n");
  console.log("running simulation...\n");
  sleep(5000);  // pause for 3 seconds

  while(player.points < 50 && cpu.points < 50) {    // play until someone wins 50 rounds
    winCards = [];                                  // reset win card arrays
    battle(player.deck[0], cpu.deck[0], winCards);  // pass through top cards for player/cpu
  }

  if(player.points > cpu.points) {
    console.log("           YOU WIN!\n");
  }
  else {
    console.log("           YOU LOST!\n");
  }
  gameStats();
}

function battle(playerCard, cpuCard, winCards) {
  displayScore();
  console.log("           " + playerCard + "  vs  " + cpuCard + "\n");
  playerCard.toString();  // convert array to string because array compare to array will not work
  cpuCard.toString();

  // retrieve card values to see who won the round
  playerCard = valueCheck(playerCard);
  cpuCard = valueCheck(cpuCard);


  if(playerCard > cpuCard){          // player wins
    winCards.push(player.deck[0]);   // copy player cards
    winCards.push(cpu.deck[0]);      // copy computer cards
    player.deck.splice(0, 1);
    cpu.deck.splice(0, 1);
    for(var i = 0; i < winCards.length; i++){
      player.deck.push(winCards[i]);
    }
    player.points++;
  }
  else if(playerCard < cpuCard){      // cpu wins
    winCards.push(player.deck[0]);    // copy player cards
    winCards.push(cpu.deck[0]);       // copy computer cards
    cpu.deck.splice(0, 1);
    player.deck.splice(0, 1);
    for(var i = 0; i < winCards.length; i++){
      cpu.deck.push(winCards[i]);
    }
    cpu.points++;
  }
  else {
    player.deck.splice(0, 2);  // you lose  2 cards
    cpu.deck.splice(0, 2);     // computer loses 2 cards
  }
}
// display battles
function displayScore() {
  console.log("Player: " + player.points + "              " + "CPU: " + cpu.points + "\n");
}

// sleep is not my code but I needed something to slow down the simulation
function sleep(milliseconds) {
  var start = new Date().getTime();
  for (var i = 0; i < 1e7; i++) {
    if ((new Date().getTime() - start) > milliseconds){
      break;
    }
  }
}

function valueCheck(cardVal) {
  // check the first character of card value
  if(cardVal.charAt(0) == 'A'){       // Ace
    return 13;
  }
  else if(cardVal.charAt(0) == 'K'){  // King
    return 12;
  }
  else if(cardVal.charAt(0) == 'Q'){  // Queen
    return 11;
  }
  else if(cardVal.charAt(0) == 'J'){  // Jack
    return 10;
  }
  else if(cardVal.charAt(0) == 'T'){  // Ten
    return 9;
  }
  else if(cardVal.charAt(0) == '9'){  // 9
    return 8;
  }
  else if(cardVal.charAt(0) == '8'){  // 8
    return 7;
  }
  else if(cardVal.charAt(0) == '7'){  // 7
    return 6;
  }
  else if(cardVal.charAt(0) == '6'){  // 6
    return 5;
  }
  else if(cardVal.charAt(0) == '5'){  // 5
    return 4;
  }
  else if(cardVal.charAt(0) == '4'){  // 4
    return 3;
  }
  else if(cardVal.charAt(0) == '3'){  // 3
    return 2;
  }
  else{                               // 2
    return 1;
  }
}

function gameStats() {
  console.log("--------------STATS------------");
  displayScore();
  console.log("You had " + player.deck.length + " cards left");
  console.log("CPU had " + cpu.deck.length + " cards left");
  console.log("Total number of round: " + (player.points + cpu.points));
  console.log("-------------------------------");
}

// Refactored Code
// refactored code above added methods such as charAt, splice, push, toString.

// Reflection
/*
What was the most difficult part of this challenge?
- Creating the battle system. There were so many problems that I went through such as the charAt function could not
  be read by an array and I couldn't compare an array's value to another array's value to see if they equaled each other.
  In addition, figuring out how to store the winner's cards and then delete the first element in an array was also a lot
  of research and trial/error.

What did you learn about creating objects and functions that interact with one another?
- I like objects and functions in javascript I found them a little bit easier to use than ruby. Its very easy to access
  object values and use functions to automate things. The hardest part is figuring out how to write the function so it
  works in the way you want it.

Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
- The built in methods suck in javascritpt and ruby has a lot more options but I found some very useful methods such as:
  charAt(x) - this method is used on a string and takes the char at x position - I used this to compare the card's value
  splice(x, y) - this method is used to add and delete values in arrays - I used this to delete the first value in the array after card was in play
  push(x) - this method adds a value at the end of any array - I used this to add cards to the round winner's deck.

How can you access and manipulate properties of objects?
- I accessed and manipulated properties of the object by using the . operator and it was so much easier than ruby.
*/

