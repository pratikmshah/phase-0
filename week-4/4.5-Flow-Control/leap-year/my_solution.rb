# Leap Years

# I worked on this challenge [by myself, with: Sabrina].


# Your Solution Below
def leap_year?(year)
  if (year % 4 == 0)
    if(year % 100 == 0)
      if(year % 400 == 0)
        p true
      else
        p false
      end
    else
      p true
    end
  else
    p false
  end
end