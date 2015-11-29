# Cipher Challenge

# I worked on this challenge [by myself, with:]
# I spent [#] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

=begin
def dr_evils_cipher(coded_message)
  input = coded_message.downcase.split("") # take string and convert each char to lower case and split each char into array
  decoded_sentence = []
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c",   # I think hash is perfecct choice for this because of the key => value factor
            "h" => "d",
            "i" => "e",
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}

  input.each do |x| # What is #each doing here? iterating through each element of the array
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true? it just solidifes a char was decoded
    cipher.each_key do |y| # What is #each_key doing here? # each key is is looping through cipher hash and returning the key
      if x == y  # it is comparing the char element from the array to the hash key value and seeing if they match
        decoded_sentence << cipher[y]  # if they match then take the key value from hash and push it to the decoded sentence
        found_match = true             # still have no clue what this does it looks like its useless
        break  # Why is it breaking here?  # if there is a match break loop and go onto the next element
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" # if char not decoded check for these char and put space
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # if there is a char that is integer then put the number inside 
        decoded_sentence << x
        found_match = true
        break
      end
    end
    if not found_match  # if an unknown char is found just replace push it into the decoded array
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("") # join all the elements of the array and retun the concatenated string
end
=end
# Your Refactored Solution

class Decipher
  
  def initialize(message, code_key)
    @code = message.downcase.split("")
    @rotate = code_key
    @cipher = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"].rotate(@rotate)
  end
  
  def set_message(message)
    @code = message.downcase.split("")
  end
  
  def decode()
    translate()  
  end
  
  private #===================PRIVATE
  
  def translate()
   decoded = []
   decipher = @cipher.clone.rotate(-@rotate)
   @code.each do |code|  
     if @cipher.include?(code)
       decoded << decipher[@cipher.index(code)]           
     elsif ["@", "#", "$", "%", "^", "&", "*"].include?(code)
       decoded << " "
     elsif (0..9).to_a.include?(@code) 
       decoded << code
     else
       decoded << code
     end
   end
   return decoded = decoded.join("")
  end
end



# Driver Test Code:
evil = Decipher.new("m^aerx%e&gsoi!", 4)
p evil.decode()

evil.set_message("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
 &fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p evil.decode()

evil.set_message("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p evil.decode()

evil.set_message("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p evil.decode()

evil.set_message("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")
p evil.decode()


