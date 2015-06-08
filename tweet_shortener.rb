require 'pry'

def word_substituter(tweet)
  words = tweet.split(" ").collect do |word|
    case word.downcase
    when "hello"
      "hi"
    when "to"
      "2"
    when "two"
      "2"
    when "too"
      "2"
    when "for"
      "4"
    when "four"
        "4"
    when "be"
      "b"
    when "you"
      "u"
    when "at"
      "@"
    when "and"
      "&"            
    else
      word
    end
  end
  words.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    shortened_tweet = word_substituter(tweet)
    puts word_substituter(shortened_tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(shortened_tweet_truncator(tweet))
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  tweet[0..139]
end