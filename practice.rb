def word_count(string)
  words = string.split
  return words.length
end

def average_word_length(string)
  if string == ""
    return nil
  else
    words = string.split
    letters =[]

    words.count.times{|x| letters[x] = words[x].chars.count}

    sum = 0
    letters.count.times{|x| sum += letters[x]}

    return sum/letters.count.to_f
  end
end

def palindrome?(string)
	string = string.chars
	i = -1
	string.count.times{|x|
		if string[x] != string[i]
			return false
		end
		i -=1
	}
	return true
end

def vowels(string)
  string = string.split
  ary =[]
  string.count.times{|x|
    if (string[x].chars & ["a","e","i","o","u"]).any?
      ary << string[x]
    end}
  return ary
end