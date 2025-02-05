require 'rubocop'

def caesar_cypher(string, shift, direction)
  caeser_string = ''

  if direction == 'right'

    string.chars.map do |char|
      if char.ord.between?(65, 90)
        num = char.ord + shift
        num -= 26 if num > 90
        caeser_string << num.chr
      elsif char.ord.between?(97, 122)
        num = char.ord + shift
        num -= 26 if num > 122
        caeser_string << num.chr
      else
        caeser_string << char
      end
    end

  else

    string.chars.map do |char|
      if char.ord.between?(65, 90)
        num = char.ord - shift
        num += 26 if num < 65
        caeser_string << num.chr
      elsif char.ord.between?(97, 122)
        num = char.ord - shift
        num += 26 if num < 97
        caeser_string << num.chr
      else
        caeser_string << char
      end
    end

  end

  caeser_string
end