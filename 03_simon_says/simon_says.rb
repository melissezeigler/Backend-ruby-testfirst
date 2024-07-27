def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, times = 2)
  ([word] * times).join(' ')
end

def start_of_word(word, num)
  word[0, num]
end

def first_word(sentence)
  sentence.split.first
end

def titleize(sentence)
  little_words = %w(and the over)
  words = sentence.split.map.with_index do |word, index|
    if little_words.include?(word) && index != 0
      word
    else
      word.capitalize
    end
  end
  words.join(' ')
end
