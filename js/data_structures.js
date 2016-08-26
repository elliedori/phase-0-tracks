var colors = ["red", "blue", "magenta", "yellow"]
var names = ["Dan", "Dave", "Eleanor", "Rupert"]

colors.push("green")
names.push("Nathaniel")

happyHorses = {}

for (i = 0; i < names.length; i++) {
  happyHorses[names[i]] = colors[i]
}

console.log(happyHorses)