require 'pry'

def leetspeak(phrase)
  phrasesplit = phrase.split("").map do |letter|
    if letter == "e"
      letter = 3
    elsif letter == "o"
      letter = 0
    elsif letter == "I"
      letter = 1
    elsif letter == "s"
      letter = "z"
    else
      letter
    end
  end

  phrasesplit.join("")
end
