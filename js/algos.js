// find longest phrase
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

// driver code to test longestFinder
longestFinder(["long phrase","longest phrase","longer phrase"])
longestFinder(["cat", "kitten", "pterodactyl"])
longestFinder(["is this", "that it is", "that which it is is that"])