require 'pry'

def dictionary
	dictionary = {
		"hello" => "hi",
		"to" => "2",
		"two" => "2",
		"too" => "2", 
		"for" => "4" ,
		"four" => "4",
		"be" => "b",
		"you" => "u",
		"at" => "@",
		"and" => "&"
	}
end
def word_substituter(tweet)

	tweet_array = []
	tweet.split(" ").each do |word|
		if dictionary[word.downcase]
			tweet_array << dictionary[word.downcase]
		else
			tweet_array << word
		end
	end

	tweet_array.join(" ")

end

def bulk_tweet_shortener(tweet_array)
	tweet_array.collect do |word|
		puts word_substituter(word)
	end

end

def selective_tweet_shortener(tweet)
	if tweet.length > 140
		word_substituter(tweet)
	else
		tweet
	end
end

def shortened_tweet_truncator(tweet)
	if selective_tweet_shortener(tweet).length > 140
		selective_tweet_shortener(tweet)[0..139] 
	else
		selective_tweet_shortener(tweet)
	end
end