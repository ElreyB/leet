require 'pry'

def leet_speak(phrase)
  phrase_split = phrase.split(" ").map do |word|
    word[0] == "s" ? word.slice!(0) + leet_word(word) : leet_word(word)
  end
  phrase_split.join(" ")
end

def leet_word(word)
  leet_rules = { 'e' => 3, 'o' => 0, "I" => 1, "s" => "z"}
  word.chars.map{ |letter| leet_rules[letter] || letter}.join
end
