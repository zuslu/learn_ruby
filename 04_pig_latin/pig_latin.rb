#write your code here
def splitter(word)
	wordArray = word.split(//)
	i=0
	while (i < wordArray.length)
		if (wordArray[i] == "a" || wordArray[i] == "e" || wordArray[i] == "i" || wordArray[i] == "o" || wordArray[i] == "u")
			wordArray << "ay"
			break
		else
			if(wordArray[i] == "q" && wordArray[i+1] == "u")
				wordArray << wordArray[i]
				wordArray << wordArray[i+1]	
				wordArray.delete_at(0)
				wordArray.delete_at(0)
			else
				wordArray << wordArray[i]
				wordArray.delete_at(0)
			end 
			i = i-1 			
		end
		i = i+1
	end
	return wordArray.join
end

def translate(sentence)
	if sentence.strip.include?(" ")
		sArr = sentence.split(/ /)
		j= 0
		while(j < sArr.length)
			sArr[j]=splitter(sArr[j])
			j = j +1
		end
		return sArr.join(' ').squeeze(' ') 
	else
		splitter(sentence)
	end
end