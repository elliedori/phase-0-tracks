// take input string
// create empty output string
// get the last letter of the input string
// add that letter to empty string
// keep doing this until we've gone through the entire input string
// return output string


function reverse(str) {

  var newString = "";

  for (var i = str.length-1; i >= 0; i--) {
    newString += str[i]
  }
  
  console.log(newString);
  return newString
}


// driver code to test program

var test1 = reverse("Ellie");
var test2 = reverse("elephant");
var test3 = reverse("unencumbered");

console.log(test1) 

if (1==1) {
  console.log(test2)
}