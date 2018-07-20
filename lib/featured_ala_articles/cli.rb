class FeaturedAlaArticles::CLI

	def call
		list_articles
		choose_article
	end

	def list_articles
		puts "Here are the latest featured posts from A List Apart:"
		puts "1. article title one"
		puts "2. article title two"
	end

	def choose_article
		input = nil
		while input != "exit"
			puts "Enter the number of which article you'd like more info on or type 'exit' to exit:"
			input = gets.strip.downcase

			if input.to_i > 0
				puts "article title"
				puts "article date"
				puts "article author"
				puts "article summary"
				puts "link"
			elsif input == "exit"
				goodbye
			else
				puts "Not sure what you want, type '1', '2', or 'exit'."
			end
		end
	end

	def goodbye
		puts "Check back again for more featured content!"
	end	
end