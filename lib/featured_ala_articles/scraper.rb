class FeaturedAlaArticles::Scraper
	def self.scrape_ala
		doc = Nokogiri::HTML(open("https://alistapart.com"))

		doc.search("section.main-content").each do |i|
			article = FeaturedAlaArticles::Articles.new
			article.title = i.search("article h2.entry-title").text.strip
			article.author = i.search("article p.entry-details span[itemprop='name']").text.strip
			article.date = i.search("time.pubdate").text.strip
			article.url = i.search("article h2.entry-title a").first.attr("href").strip
			article.summary = i.search("p.entry-summary").text.strip
		end
	end
end