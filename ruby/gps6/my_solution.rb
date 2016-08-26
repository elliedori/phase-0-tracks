# Virus Predictor

require 'pry'

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Require relative is used for files (usually within the same directory). 
# Require is used for either files or modules.
# In both cases, you are pulling the code from the file or module into your current file.

require_relative 'state_data'

class VirusPredictor

  # initialize is used to create new instances of a class, in this case it takes in three parameters
  # that are then assigned to instance variables (attributes)
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


  # this method is calling two other methods inside it, and returns the speed_of_spread output
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # this method calculate the number of likely deaths based on population density,
  # returns an integer less or equal to the float number
  # also prints a message to the user with the information

  def predicted_deaths
    # predicted deaths is solely based on population density

    if @population_density >= 200
      factor = 0.4
    elsif @population_density >= 150
      factor = 0.3
    elsif @population_density >= 100
      factor = 0.2
    elsif @population_density >= 50
      factor = 0.1
    else
      factor = 0.05
    end

    number_of_deaths = (@population * factor).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # this methods calculates how fast the virus will spread (in months) based 
  # on population density, also prints message to user with information
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    speed += 0.5 if @population_density >= 200
    speed += 1 if (150..199).include?(@population_density)
    speed += 1.5 if (100..149).include?(@population_density)
    speed += 2 if (50..99).include?(@population_density)
    speed += 2.5 if (0..49).include?(@population_density)

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, state_info|

  VirusPredictor.new(state, state_info[:population_density], state_info[:population]).virus_effects

end


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section