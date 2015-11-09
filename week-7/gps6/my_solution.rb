# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#require - is for absolute path of the file being imported
#require_relative - is used for relative path of the file being imported

#population density is number of people per square mile as of 2012
#this data is updated every year with estimates from a 10 year census

require_relative 'state_data'

class VirusPredictor

  #Creates a new instance of the class, State, Pop, PopDensity, and assigns to instance variables
  def initialize(state_of_origin, population_density, population, state_data)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @state_data = state_data
  end

  def virus_effects #Runs 2 methods
    predicted_deaths()
    speed_of_spread()
  end

  def virus_summary()
    @state_data.each do |state, pop_data|
      print "#{state}: Density #{pop_data[:population_density]}, Population #{pop_data[:population]}\n"
    end
  end

  private  #class only methods

  def predicted_deaths()
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density < 50
      number_of_deaths = (@population * 0.05).floor
    else
      number_of_deaths = ((@population_density/50)/10)*@population.floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread() #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    else
      speed += 2.5 - (@population_density/50)*0.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA)
alaska.virus_effects

alaska.virus_summary

#=======================================================================
# Reflection Section
=begin

What are the differences between the two different hash syntaxes shown in the state_data file?
- The differences in the hashes is that the outside hash was using a string as as the key while
  the inside hashes were using a symbol as their key values.

What does require_relative do? How is it different from require?
- require_relative is a relative path to a file while require is the absolute path to a file. You are
  also importing the contents of the file.

What are some ways to iterate through a hash?
- some ways to iterate through a hash is by using a each iterator and in this case it was the best use case.

When refactoring virus_effects, what stood out to you about the variables, if anything?
- the variables were local variables that were not needed as we used instance variables in the classes.
  Also, we did not need to pass in any arguments.

What concept did you most solidify in this challenge?
- The concepts that were solidified had to be the use of classes, methods, and instance variables and their purpose.

=end