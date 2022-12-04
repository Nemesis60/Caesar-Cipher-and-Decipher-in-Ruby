#planning:
  #create a variable in which I will be adding each letter of the loop for
  #then the base that will be the first letter 'A'.ord = 65
  #the the loop for and transform the string passed in the parameter to array and itering that array
  #create a filter with if != "" to avoid cipher spacing because space are string too
  # while iterating, deduc each letter -65 example: in ASCII the letter H is equal to 72 so this mean (72 - 65 = 7)
  #now i need add the second parameter with 7 example: shift = 5 so this is equal to 7 + 5 = 12
  #and finally using the base 'A' that is 65 and add the previous result example: 65 + 12 = 77 so this mean in ASCII table to = M
  #finally transform each one in characters and add to the result variable

  def caesar_cipher(string, shift)
    result = ""
    firstChar = 'A'.ord

    for i in string.split("") # add the string in an array
      newChar = " "
      if i != " "   #filter for the spaces string, i need that the string don't count
        index_alphabet = i.ord - firstChar    #while iterating, deduc each letter -65
  
        index_shifted = index_alphabet + shift
        #then the result of letter -65 i need add the parameter that will pass in the argument 
        newChar = (index_shifted + firstChar).chr  #finally te result of index_shifted will adding with 65 and transform
        #to character
      end
      result += newChar  #to result is to add each letter cipher
    end
    return result
  end
  
  cipher = caesar_cipher("Omae Wa Mou_Shindeiru .- NANI!!", 5)
  puts "cipher String -------> #{cipher}"
  
  #-------------------------------------------------------
  
  def caesar_decipher(string, shift)
    result = ""
    firstChar = 'A'.ord
  
    for d in string.split("")
      newChar = " "
      if d != " "
        index_alphabet = d.ord - firstChar
        
        index_shifted = index_alphabet - shift
        newChar = (firstChar + index_shifted).chr
      end
      result += newChar
    end
    return result
  end
  
  puts "decipher String -----> #{caesar_decipher(cipher, 5)}"