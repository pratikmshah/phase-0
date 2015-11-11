/*
Person 1 - USER STORIES - Scott & Pratik
1. As a user, we want to take a data set of numbers and have odd length and even length data sets seperate.
   Below we have these data sets
   oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
   evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]

   For the data sets above, there is an odd length data set, and an even length data set, we want to be able do the following to both of them:
2. We want to be able to calculate a sum of numbers.
3. We want to be able to calculate a mean.
4. We want to be able to calculate a median.
*/

/*
Person 1 - USER STORIES
1. As a user, we want to take a data set of numbers and have odd length and even length data sets seperate.
   Below we have these data sets
   oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
   evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]

   For the data sets above, there is an odd length data set, and an even length data set, we want to be able do the following to both of them:
2. We want to be able to calculate a sum of numbers.
3. We want to be able to calculate a mean.
4. We want to be able to calculate a median.
*/

/*
Person 2: Nil Thacker
User Stories to Pseudocode

sum:
  input: numbers (array)
  output: a sum (integer)
  steps:
    declare a sum variable (integer) and set it equal to zero
    iterate through the numbers array and add each element to the sum
      to do this:
        declare a counter variable (integer) and set it equal to zero
        loop while the counter variable is less than the length of the numbers array
          in every loop iteration:
            add the value of the current array element to the current value of the sum
            add one to the counter variable
    return sum

mean:
  input: numbers (array)
  output: a mean (integer)
  steps:
    EITHER
      declare a sum variable (integer) and set it equal to zero
      iterate through the numbers array and add each element to the sum
      convert the sum to a float
      divide the sum by the length of the numbers array
    OR
      call sum on the array of numbers
      convert the sum to a float
      divide the sum by the length of the numbers array

  median:
    input: numbers (array)
    output: a median (integer)
    steps:
      determine the length of the numbers array
      if the length is odd:
        return the element at (length divided by 2) plus 1
      if the length is even:
        add the elements at [(length divided by 2) plus 1] and [length divided by 2]
        return the sum divided by 2

*/

// Person 3: Pratik Shah ============================================================
// sum of array

function sum(data) {
  var sum = 0;  // delcare sum vairable

  // iterate through the array and sum the numbers into variable
  for(var i = 0; i < data.length; i++) {
    sum += data[i];
  }

  return sum;
}

// mean of array
function mean(data) {
  return mean = sum(data) / data.length; // sum the data and divide by # elements
}

// median of array
function median(data) {
  median = 0;  // delcare result

  // calculate median based on even or odd # of elements
  if (data.length % 2 != 0) {
    return median = data.length / 2 + 1;
  }
  else {
    return median = (data[data.length/2 + 1] + data[data.length/2]) / 2;
  }
}
//tests
var test = [1, 2.3, 3.5, 4.2, 5, 2];

console.log(sum(test));
console.log(mean(test));
console.log(median(test));

//======================================================================================