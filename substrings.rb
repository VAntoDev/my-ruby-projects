require 'pry-byebug'

def substrings(substrings_array, array_of_strings)
  #Creating the returning hash
  substrings_hash = Hash.new
  
  #Creating the substrings array where every word in the string gets downcased, every special character gets canceled and every word of the string goes into a new array
  substrings_array = substrings_array.downcase
  substrings_array = substrings_array.gsub(/[^0-9A-Za-z]/, ' ')
  substrings_array = substrings_array.split

  #Every word of the substrings array gets compared one by one with every word of the array_of_strings, if one of them is a valid substring it gets added to the returning hash
  substrings_array.each do | word |
    array_of_strings.each do | sub |
      if word.include?(sub)
        if substrings_hash[sub] == nil
          substrings_hash[sub] = 1
        else
          substrings_hash[sub] += 1
        end
      end
    end
  end

  substrings_hash

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
#=> {"below"=>1, "low"=>1}
#=> {"how"=>2, "howdy"=>1, "part"=>1, "partner"=>1, "it"=>2, "i"=>3, "sit"=>1, "down"=>1, "own"=>1, "go"=>1, "going"=>1}
