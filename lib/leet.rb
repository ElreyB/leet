require 'pry'

def leetspeak(phrase)
  phrase_split = phrase.split(" ").map do |word|
    if word[0] == "s"
      first_s = word.slice!(0)
      first_s + word_leet(word)
    else
      word_leet(word)
    end
  end
  phrase_split.join(" ")
end

def word_leet(word)
  leet_rules = { 'e' => 3, 'o' => 0, "I" => 1, "s" => "z"}
  word.chars.map{ |letter| leet_rules.key?(letter) ? leet_rules[letter] : letter}.join
end
