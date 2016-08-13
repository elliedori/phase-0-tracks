freeway = {

  red_nissan: {
    people: ['Susan', 'John'],
    no_of_cupholders: 4,
    destination: 'Marin Headlands'
  },

  blue_bmw: {
    people: ['Eric'],
    no_of_cupholders: 2,
    destination: 'The Mission'
  },

  white_honda: {
    people: ['Roxanne', 'Josh', 'Freddy'],
    no_of_cupholders: 4,
    destination: 'Russian River'
  },

  clown_car: {
    people: ['Belinda the Bearded Lady', 'Tickler the Clown', 'Menace the Mime'], 
    no_of_cupholders: 8,
    destination: "Willy Wonka's Chocolate Factory"
  },

  black_mini: {
    people: ['Paulo', 'Cassandra'],
    no_of_cupholders: 2,
    destination: 'Napa Valley'
  }

}

puts freeway[:red_nissan][:people].last

puts freeway[:blue_bmw][:no_of_cupholders]

puts freeway[:clown_car][:people][2]

freeway[:white_honda][:people] << 'Elaine'
puts freeway[:white_honda][:people]

freeway[:black_mini][:no_of_cupholders] = 4
puts freeway[:black_mini][:no_of_cupholders]



