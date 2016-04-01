def split_into_words(input)
	words = input.split(/ /)
	remove_punctuation(words.sort)
end

def remove_punctuation(input)
	string_np = []
	input.each do |word|
		word_np = word.gsub(/[[:punct:]]+/, '')
		string_np << word_np
	end
	custom_sorting(string_np)
end

def custom_sorting(input)
	words = input
	words.sort_by! { |word| word.upcase }
	puts words
end

split_into_words("Hello world, blah blah blah; TEST! activity Exercise")