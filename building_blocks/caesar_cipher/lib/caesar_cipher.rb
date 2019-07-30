def caesar_cipher(input, shift)
  shift %= 26
  letters = input.split("")
  letters.map! do |letter|
    letter_code = letter.ord + shift
    if letter.match? /[a-z]/      
      letter_code -= 26 if letter_code > 122
      letter_code.chr
    elsif letter.match? /[A-Z]/
      letter_code -= 26 if letter_code > 90
      letter_code.chr
    else
      letter
    end
  end
  return letters.join("")
end

# puts "String: "
# input = gets.chomp
# puts "Key: "
# key = gets.chomp.to_i
# puts caesar_cipher(input, key)