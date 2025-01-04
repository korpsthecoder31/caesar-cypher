def caesar_cypher(string, shift, direction)

  caeser_string = ""

  if direction == "right"
  
    string.chars.map do |char| 
      if char.ord.between?(65, 90)
        num = char.ord + shift
        if num > 90
          num -= 26
        end
        caeser_string << num.chr
      elsif char.ord.between?(97,122)
        num = char.ord + shift
        if num > 122
          num -= 26
        end
        caeser_string << num.chr
      else
        caeser_string << char
      end
    end

  else direction == "left"
    
    string.chars.map do |char| 
      if char.ord.between?(65, 90)
        num = char.ord - shift
        if num < 65
          num += 26
        end
        caeser_string << num.chr
      elsif char.ord.between?(97,122)
        num = char.ord - shift
        if num < 97
          num += 26
        end
        caeser_string << num.chr
      else
        caeser_string << char
      end
    end
    
  end

  caeser_string
  
end