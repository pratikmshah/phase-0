#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

class NameData
  attr_reader :name

  def initialize
    @name = "Pratik"
  end
end


class Greetings
  def initialize
    @greet = NameData.new
  end

  def greeting
    puts "Hello! " + @greet.name
  end
end

greet = Greetings.new
puts greet.greeting

# Reflection
=begin

# REALEASE-1

What are these methods doing?
  Each method is doing one of the three things writing to instance variable, reading to instance variable, and displaying to console
- initialize - when new object is created it initializes instance variables age, name and occupation
- print_info - writes to the console by printing and accessing the age, name and occupation variables
- what_is_age - allows the age variable to be read
- change_my_age - allows the variable age to be written to
- what_is_name - allows the name variable to be read
- change_my_name - allows the variable name to be written to
- what_is_occupation - allows the occupation variable to be read
- change_my_occupation - allows the occupation variable to be written to

How are they modifying or returning the value of instance variables?
  They are modifying and return the value of intance vairables by using the object to accessor using the dot operator followed by
  the instance variable's name. EX instance_of_profile.what_is_name

-----------------------------------------

# RELEASE-2

What changed between the last release and this release?
  In this release the method to read the @age variable was deleted and we added a line called attr_reader and symbol variable in its
  place. This allows us to do the same exact thing in the last release but in a more efficient manner by using attr_reader.

What was replaced?
  The method what_is_age was repalced by attribute reader variable called age. It does the same exact thing as the method that was
  deleted but more efficiently.

Is this code simpler than the last?
  Yes, it is getting there once we remove all of getter/setter methods and place the variables in attributes

-----------------------------------------

# RELEASE-3

What changed between the last release and this release?
  In this realease the method change_my_age was deleted and we added the instance variable age to attr_writer to be able to write to it

What was replaced?
  We replaced the setter method for age and created an attr_writer variable

Is this code simpler than the last?
  Yes, it is getting there once we remove all of getter/setter methods and place the variables in attributes

-----------------------------------------

# RELEASE-6 Reflection

What is a reader method?
- A reader method is a method that return an the value of an instance variable. You cannot write to it only access it.

What is a writer method?
- A writer method is a method that asigns a new value to an instance variable. You cannot read the variable

What do the attr methods do for you?
- The attr methods allow you to create getter and setter methods quickly and more efficiently. Instead of having to write a method
  for each individual variable.

Should you always use an accessor to cover your bases? Why or why not?
- No, you should only use accessor if the instance variable absolutly needed to be written to and accessed. Otherwise it is best to
  use attr_reader for variables that only needed to be read and attr_writer for vairables that only need to be written to.

What is confusing to you about these methods?
- Nothing is confusing to me about these methods it makes perfect sense what would be confusing is if we have 10 instance variables
  and a lot of setter or getter methods written out for each variable that would take a lot of unecessary room in the file.

=end