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
  for (var i = 0; i < values.length; i+=2){
    if (values[i] == values[i+1]){
      match = true
    }
  }
  return match
}

function matchChecker(firstObj, secondObj) {
  matchedKeys = []

  // gets keys
  firstKeys = keyGetter(firstObj)
  secondKeys = keyGetter(secondObj)
  
  // checks to see if keys match, if so gathers the corresponding values
  for (var i = 0; i < firstKeys.length; i++){
    for (var j = 0; j < secondKeys.length; j++) {
      if (firstKeys[i] == secondKeys[j]){
      matchedKeys.push(firstObj[firstKeys[i]])
      matchedKeys.push(secondObj[secondKeys[j]])
      }
    }
  }

  // checks to see if values match, returns boolean
  console.log (valueChecker(matchedKeys))
}

// random array array builder
// input is a number
// does the following number times:
//   generates random length between 1-10
//   builds random string of that length
//   pushes string to array
// returns array of random strings


function stringBuilder() {  // builds a random string of 1-10 letters
  var alpha = "abcdefghijklmnopqrstuvwxyz"
  var randRange = Math.floor(Math.random() * (10)) + 1;
  randString = ""

  for (var i = 0; i < randRange; i++) {
    randLetter = Math.floor(Math.random() * (26));
    randString += alpha.charAt(randLetter);
  }
  return randString
}

function arrayBuilder(num){ // creates a custom sized array of random strings
  randArray = []
  for (var i = 1; i <= num; i++) {
    randArray.push(stringBuilder())
  }
  console.log(randArray)
  return randArray
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

// testing array of random strings generator
arrayBuilder(4)
arrayBuilder(7)

// driver code that does the following 10 times: generates random array & prints longest string
for (var k = 0; k < 10; k++) {
  // length = Math.floor(Math.random() * 4) + 2; // generate random array length between 2 and 6
  testArray = arrayBuilder(5);
  longestFinder(testArray);
}


