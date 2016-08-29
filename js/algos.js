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

function keyGetter(arr){ // gathers the keys
  var keys = [];
  for (var key in arr) {
      keys.push(key);
}
  return keys
}

function valueChecker(values){ // checks to see if the corresponding values match
  match = false
  for (i = 0; i<values.length; i+=2){
    if (values[i] == values[i+1]){
      match = true
    }
  }
  console.log(match)
  return match
}


function matchChecker(firstObj, secondObj) {
  matchedKeys = []

  // gets keys
  firstKeys = keyGetter(firstObj)
  secondKeys = keyGetter(secondObj)
  
  // checks to see if keys match, if so gathers the corresponding values
  for (i = 0; i < firstKeys.length; i++){
    for (j = 0; j < secondKeys.length; j++) {
      if (firstKeys[i] == secondKeys[j]){
      matchedKeys.push(firstObj[firstKeys[i]])
      matchedKeys.push(secondObj[secondKeys[j]])
      }
    }
  }

  // checks to see if values match, returns boolean through valueChecker function
  return valueChecker(matchedKeys)
}



// ———————————————————————————————————— DRIVER CODE ———————————————————————————————————— //

// testing longest phrase
longestFinder(["long phrase","longest phrase","longer phrase"])
longestFinder(["cat", "kitten", "pterodactyl"])
longestFinder(["is this", "that it is", "that which it is is that"])


// testing key value match checker
matchChecker({name: "Steven", age: 54, hair: "blue"}, {name: "Tamir", age: 52, hair: "blue"})
matchChecker({gender: "male", pet: "cat", age: 7}, {gender: "female", pet: "rock", age: 7})
matchChecker({name: "Jen", job: "sales"}, {name: "Ed", job: "marketing"})

