def caesar_cipher(string, key = 0)
  word = ""
  string.codepoints.each do | num |
    #Check if the codepoint is a lowercase or upcase letter, otherwise skip to the next iteration
    if num < 65 || num > 122
      word += num.chr 
      next
    end

    if num.between?(91, 96) 
      word += num.chr 
      next
    end

    #If the letter is upcase, this 'if' is executed and the letter is added to the word skipping to the next iteration
    if num < 91
      num += key

      while num > 91
        num -= 26
      end

      word += num.chr
      next
    end

    #Finally, the lowercase letters are added to the word
    num = num + key

    while num > 122
      num = num - 26
    end

    word += num.chr 
  end
  p word
end

caesar_cipher("What a string!", 5) #=> "Bmfy f xywnsl!"

caesar_cipher("hi, my key is 23!", 23) #=> "ef, jv hbv fp 23!"

caesar_cipher("Wooow my Key is 763! =)", 763) #=> "Fxxxf vh Tnh rb 763! =)"