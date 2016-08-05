def employee_survey

  puts "What's your name?"
  name = gets.chomp

  puts "How old are you?"
  age = gets.chomp.to_i

  puts "What year were you born?"
  birthyear = gets.chomp

  if age == (2016 - birthyear.to_i)
    correct_age = true
  end

  puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
  if gets.chomp == "y"
    likes_garlic = true
  else
    hates_garlic = true
  end

  puts "Would you like to enroll in the company’s health insurance? (y/n)"
  if gets.chomp == "y"
    insur_yes_plz = true
  else
    insur_no_thx = true
  end

  # I used separate if loops so that result would get overwritten as the program checked,
  # instead of exiting the loop once one of the conditions was met. I did this because it
  # specifically asked us to match these conditions in the order written. If that instruction
  # weren't there, I would have used a regular if/elsif/else loop to check and would have 
  # reversed the order of the logical statements to go from most strict to least strict.
  # (I.e. so that it first checks for the matching name, then for the case where it's 
  # the wrong age, hates garlic, and doens't want insurance, etc.)

  result = ""

  if correct_age && (likes_garlic || insur_yes_plz)
    result = "Probably not a vampire."
  end

  if !correct_age && (hates_garlic || insur_no_thx)
    result = "Probably a vampire."
  end

  if !correct_age && hates_garlic && insur_no_thx
    result = "Almost certainly a vampire."
  end

  if (name.downcase == "drake cula" || name.downcase == "tu fang")
    result = "Definitely a vampire."
  end

  if result == ""
    result = "Results inconclusive."
  end

# putting the allergy question last in the survey so it overrides any prior result

  allergies = ""
  puts "Please list any allergies you have, one at a time. Type 'done' when you're finished."
    while allergies != "done"
      allergies = gets.chomp
      if allergies.downcase == "sunshine"
      result = "Definitely a vampire"
      break
    end
  end

  puts result
end

# prompt user to select number of employees & loop through program

puts "How many employees are you processing today?"
num_employees = gets.chomp.to_i
num_employees.times {|x| employee_survey}
