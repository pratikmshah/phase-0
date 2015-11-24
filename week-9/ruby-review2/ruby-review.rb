# Create a Car Class from User Stories


# I worked on this challenge [by myself, with: ].


# 2. Pseudocode
=begin
    As a video game player, I want to be able to create a new car and set its model and color so I can customize it in the video game.
    As a video game player, I need to be able to define a distance to drive so I can follow directions appropriately.
    As a video game player, I'd like to be able to see the speed I am traveling, so I can properly accelerate or decelerate.
    As a video game player, I want to be able to turn left or right so I can navigate a city and follow directions.
    As a video game player, I want to be able to accelerate and decelerate the car to a defined speed so I can drive following the rules of the road.
    As a video game player, I want to keep track of the total distance I have travelled, so I can get paid for mileage.
    As a video game player, I want to be able to stop the car so I can follow traffic signs and signals.
    As a video game player, I would like to see output reflecting the latest action of my car so I can see a play-by-play of the pizza delivery.

What are the characteristics associated with the car? These are your attributes. What are the actions associated with your car? These are your methods.

=end

# 3. Initial Solution
class Pizza
  attr_accessor :topping, :size
  def initialize(size, topping)
    @topping = topping
    @size = size
  end

  def delicious
    puts "it's delicious"
  end
end


class Car
  attr_accessor :direction, :distance, :speed

  def initialize(model, color)
    @model = model
    @color = color
    @direction = "forward"
    @distance = 0
    @speed = 0
  end

  def drive(distance, mph)
    @distance += distance
    @speed = mph
  end

  def direction(direction)
    @direction = direction
  end

  def speed(speed)
    @speed = speed
  end

  def stop()
    @speed = 0
  end

  def last_action()
    puts "Direction: " + @direction
    puts "Speed: " + @speed.to_s
    puts "Distance: " + @distance.to_s
  end
end


# 1. DRIVER TESTS GO BELOW THIS LINE

=begin

    Create a new car of your desired model and type
    Drive .25 miles (speed limit is 25 mph)
    At the stop sign, turn right
    Drive 1.5 miles (speed limit is 35 mph)
    At the school zone, check your speed
    Slow down to speed limit 15 mph
    Drive .25 miles more miles
    At the stop sign, turn left
    Drive 1.4 miles (speed limit is 35 mph)
    Stop at your destination
    Log your total distance travelled


=end

car = Car.new("ford", "black")
car.drive(0.25, 25)
car.direction("right")
car.stop
car.direction("forward")
car.drive(1.5, 35)
car.speed(15)
car.drive(0.25, 15)
car.drive(1.4, 35)
car.stop

car.last_action
# 5. Reflection

=begin

    What concepts did you review in this challenge?
    - creating classes and attributes along with driver code

    What is still confusing to you about Ruby?
    - Nothing much it is just hard to get used to the syntax going from JS to ruby

    What are you going to study to get more prepared for Phase 1?
    - read, watch videos and practice more problems

end