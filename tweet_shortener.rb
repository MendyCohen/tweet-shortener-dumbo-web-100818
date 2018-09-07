def dictionary
  word_dictionary = {
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(shortner)
   shortner.split.map do |word|
     if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else  
      word
  end
 end.join(" ")
end

def bulk_tweet_shortener(sentence)
  sentence.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet_selector)
  if tweet_selector.length < 140
     tweet_selector
   else word_substituter(tweet_selector)
  end
end

def shortened_tweet_truncator(the_truncator)
   the_truncator[0...140]
end



