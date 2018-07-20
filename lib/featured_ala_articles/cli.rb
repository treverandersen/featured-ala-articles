class FeaturedAlaArticles::CLI

	def call
		list_articles
		choose_article
	end

	def list_articles
		puts "Here are the latest featured posts from A List Apart:"
		@featured_articles = FeaturedAlaArticles::Articles.scrape_ala
		@featured_articles.each.with_index(1) do |article, i|
			puts "#{i}. #{article.title}"
		end
		puts ""
	end

	def choose_article
		input = nil
		while input != "exit"
			puts "Enter the number of which article you'd like more info on or type 'exit' to exit:"
			input = gets.strip.downcase

			if input.to_i > 0
				this_article = @featured_articles[input.to_i-1]
				puts ""
				puts "#{this_article.title}"
				puts "----------"
				puts "Published: #{this_article.date}"
				puts "By: #{this_article.author}"
				puts "----------"
				puts "#{this_article.summary}"
				puts "----------"
				puts "For the full article click here -> https://alistapart.com#{this_article.url}"
				puts ""
			elsif input == "exit"
				goodbye
			else
				puts "Not sure what you want, type '1', '2', or 'exit'."
			end
		end
	end

	def goodbye
		puts ""
		puts "Check back again for more featured content!"
	end	
end