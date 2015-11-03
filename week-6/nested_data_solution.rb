# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:1
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:1
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:1
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES
# destructive
number_array = [5, [10, 15], [20,25,30], 35]
number_array.map! do |element|
  if element.kind_of?(Array)
    element.map! {|inner| p inner+5}
  else
  p element + 5
  end
end
p number_array

# Bonus:
=begin
IF string, then add "ly"
ELSE go inside of the array
  IF string, then add "ly"
  ELSE go inside of the array
    IF string, then add "ly"
    ELSE go inside of the array

=end

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! do |element|
  if element.kind_of?(String)
    p "#{element}ly"
  else
    element.map! do |element|
      if element.kind_of?(String)
      p "#{element}ly"
      else
        element.map! do |element|
        if element.kind_of?(String)
        p "#{element}ly"
        end
      end
    end
   end
 end
end
p startup_names


p startup_names.flatten.map! { |element| "#{element}ly"}

=begin

What are some general rules you can apply to nested arrays?
- I think you can say using an enumerable loop is the easiest way to insure that each element of every nest gets looped
  over. Alternatively, you can use a lot of if else statements to check if element is of type Array but this is too
  confusing and flawed as we saw when trying to get to the 3rd nested array in the startup_names problem.

What are some ways you can iterate over nested arrays?
- A few ways you could iterate through nested arrays are using enumerable methods that are destructive or
  non-destructive. We used the map method for this challenge but we could have also used the each method. There
  are plenty of other ways but nesting each loops are most likely the easiest.

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
- We used a few methods such as the map! and flatten. We used the map method becuase we wanted to edit the original
  array and concatenate a string to it. This allowed us to return the new array into the original variable. We also
  used the flatten method to get rid of all nested arrays and put all of the data into one array. Due to this we only
  needed one loop to complete the task

=end

