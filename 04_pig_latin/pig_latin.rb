def translate(sentence)
  words = sentence.split(" ")
  pig_latin_words = words.map { |word| translate_word(word) }
  pig_latin_words.join(" ")
end

def translate_word(word)
  capitalized = (word[0] == word[0].upcase)
  word = word.downcase
  if word =~ /\A[aeiou]/
    result = word + "ay"
  elsif word =~ /\A(qu)/
    result = word[2..-1] + "quay"
  elsif word =~ /\A([^aeiou]*qu)/
    match = word.match(/\A([^aeiou]*qu)(.*)/)
    result = match[2] + match[1] + "ay"
  else
    match = word.match(/\A([^aeiou]+)(.*)/)
    result = match[2] + match[1] + "ay"
  end
  capitalized ? result.capitalize : result
end
