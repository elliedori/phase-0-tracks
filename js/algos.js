// LONGEST PHASE ALGO
// input is array of strings
// create variable longest, set it equal to empty strings
// for each string in the array, check to see if its length is longer than longest
// if so, replace longest with that word
// return longest after loop

function longestFinder(array) {
  longest = ""
  for (i = 0; i < array.length; i++) {
    if (array[i].length > longest.length) {
      longest = array[i]
    }
  }
  console.log(longest)
  return longest
}

// SHARED KEY VALUE PAIR ALGO
// input is two objects
// create sameKey object, which is empty
// create pairMatch variable and set to false
// for each item in the first object, 
//   check to see if it matches any of the items in the second object (nested for loop)
//   if it does, add both objects to sameKey
// then for each even + odd index in sameKey, check if those keys have the same value
// if they do change pairMatch to true
// once a true pair has been found, stop looking
// return pairMatch

// function pairChecker(firstObj, secondObj) {
//   sameKey = {};
//   var pairMatch = false;
//   for (i = 0; i < firstObj.length; i++) {
//     for (i = 0; i < secondObj.length; i++) {
//       if firstObj
//     };

//   }






// }











// ———————————————————————————————————— DRIVER CODE ———————————————————————————————————— //

// testing longest phrase
longestFinder(["long phrase","longest phrase","longer phrase"])
longestFinder(["cat", "kitten", "pterodactyl"])
longestFinder(["is this", "that it is", "that which it is is that"])

