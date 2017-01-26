#write your code here
def echo(arg)
	arg
end

def shout(arg)
	arg.upcase
end

def repeat(x, y=2)
	y.times.map{x + ' '}.join.rstrip	
end

def start_of_word(word, ind)
	word[0..ind-1]
end

def first_word(word)
	word.split(' ')[0]
end

/def titleize(words)
	words.split.map(&:capitalize).join(' ')
end/

def titleize(sentence)
	stop_words = %w{a an and the or for of nor over}
  	sentence.split.each_with_index.map{|word, index| stop_words.include?(word) && index > 0 ? word : word.capitalize }.join(" ")
end