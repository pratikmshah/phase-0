# Pseudocode
=begin
  step1: declare variables for group number, counter, # of people, also make an empty hash
  step2: check IF we can get groups into 4 or 5 and last resort 3
  step3: SHUFFLE through the list and ITERATE through and depending on the people per group
         reset the counter and create a new group.
  step3: ITERATE through the hash and then print out group name then members. New METHOD to handle this
=end

# Initial Solution
def acct_group(name_list)
  # declare variables
  group_num = 1
  counter = 0
  people = name_list.length
  group = {}

  # find how many people can be split up min 3/group try for 4 or 5
  if(people % 4 == 0)
    group_of = 4
  elsif((people % 4 != 0) && (people % 4 >= 3))
    group_of = 4
  elsif(people % 5 == 0)
    group_of = 5
  elsif((people % 5 != 0) && (people % 5 >= 3))
    group_of = 5
  else
    group_of = 3
  end

  # loop through array and add names to hash. If counter = group number change group and reset counter
  name_list.shuffle.each do |element|
    if(counter == group_of)
      counter = 0
      group_num += 1
    end
    group["Group #{group_num}"] = group["Group #{group_num}"] == nil ? "#{group["Group #{group_num}"]}#{element}" :
    "#{group["Group #{group_num}"]}, #{element}"
    counter += 1
  end

  acct_group_print(group)
end


def acct_group_print(group_list)
  puts "---------Accountability Groups---------"
  group_list.each_pair do |key, value|
  puts "#{key}: #{value}"
  end
end

list = [
"Syema Ailia",
"Alan Alcesto",
"Daniel Andersen",
"James Artz",
"Darius Atmar",
"Brian Bensch",
"Nicola Beuscher",
"Kris Bies",
"Logan Bresnahan",
"William Brinkert",
"Scott Chou",
"Bernice Anne Chua",
"Abraham Clark",
"Jon Clayton",
"Kevin Corso",
"Jacob Crofts",
"Amaar Fazlani",
"Solomon Fernandez",
"Edward Gemson",
"Jamar Gibbs",
"Chris Gomes",
"Will Granger",
"Christopher Guard",
"Ryan Ho",
"Igor Kazimirov",
"Walter Kerr",
"Karla King",
"Becky Lehmann",
"Malia Lehrer",
"Carolina Medellin",
"Timothy Meixell",
"Chris Miklius",
"Joshua Monzon",
"Shea Munion",
"Bryan Munroe",
"Trevor Newcomb",
"Aleksandra Nowak",
"Fatma Ocal",
"Van Phan",
"Luis Fernando Plaz",
"Natalie Polen",
"Alicia Quezada",
"Jessie Richardson",
"Nimi Samocha",
"Zach Schatz",
"Tal Schwartz",
"Pratik Shah",
"Josh Shin",
"Shawn Spears",
"Sasha Tailor",
"Nil Thacker",
"Natasha Thapliyal",
"Sabrina Unrein",
"Brian Wagner",
"Clinton Weber",
"Gregory Wehmeier",
"Michael Whelpley",
"Alexander Williams",
"Peter N Wood",
"Ryan Zell"
]

acct_group(list)  # run method
# ------------------- END OF INITIAL SOLUTION ---------------

# Refactored
def acct_group(name_list)
  # declare variables
  group_num = 1
  counter = 0
  people = name_list.length
  group = {}

  # find how many people can be split up min 3/group try for 4 or 5
  if(people % 4 == 0)
    group_of = 4
  elsif(people % 4 >= 3)
    group_of = 4
  elsif(people % 5 == 0)
    group_of = 5
  elsif(people % 5 >= 3)
    group_of = 5
  else
    group_of = 3
  end

  # loop through array and add names to hash. If counter = group number change group and reset counter
  name_list.shuffle.each do |element|
    if(counter == group_of)
      counter = 0
      group_num += 1
    end

   group["Group #{group_num}"] == nil ? group.store("Group #{group_num}", "#{group["Group #{group_num}"]}#{element}") :
   group.store("Group #{group_num}", "#{group["Group #{group_num}"]}, #{element}")

    counter += 1
  end

  acct_group_print(group)
end

acct_group(list)  # run method

#-------------------- END OF REFACTORED SOLUTION --------------

# Reflection
=begin

What was the most interesting and most difficult part of this challenge?
  Most interesting part of this challenge is that it requried the use of everything we learned so far as it incorporated variables, arrays, hashes, control flow, iteration and methods; you needed each piece to accomplish the task. The most difficult part of this challenge for me was how to iterate through the array and create a new group for every x amount of people and then create a new hash key and values; basically the whole iteration part.

Do you feel you are improving in your ability to write pseudocode and break the problem down?
  I think I am still the same I can write things down in steps but I need to write code piece by piece. I can't solve the whole problem using pseudocode and then coding so I do a comboination pseudocode step one then code it, step 2 then code it etc...

Was your approach for automating this task a good solution? What could have made it even better?
  Yes, I could create random groups in seconds this method could be useful not only for accountability groups but for any other groups. It would have been better if you could pass an argument specifying how many people per group the user would like.

What data structure did you decide to store the accountability groups in and why?
  I used Hashes to store the acountability groups into because I could have the key as the accountability group number and then the data as string of the members in the group. I could have done this in an array also but It would have been a little more complicated fitting in the accountability group numbers in but not impossible.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
  I learned that it gets a little bit harder and harder to find new methods that will work with your program. It also is trial and error on new methods to see if they work or not. I did some minor tweaks with the if else statements and used a method called STORE for hash concatenation. I used shuffle which randomly shuffles the array to give us new groups every time and each_pair for the hash to be able to print out key and value when displaying the groups.

=end