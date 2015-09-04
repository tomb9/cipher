def caesar_cipher(input_string, shift_factor)
	new_string = ""
	alphabet = ("a".."z").to_a.concat(("A".."Z").to_a)
	
	input_string.each_char do |letter|
		if !alphabet.include?(letter)
			new_string += letter
		else
			new_string += alphabet[alphabet.index(letter.downcase) - shift_factor]
		end
	end

	return new_string.downcase.capitalize
end

puts caesar_cipher("Apples? and Oranges!!!!!!", 2)


			

