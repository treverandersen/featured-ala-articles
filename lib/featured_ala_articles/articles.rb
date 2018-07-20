require 'pry'
require 'open-uri'
require 'nokogiri'
class FeaturedAlaArticles::Articles
	attr_accessor :title, :date, :author, :url, :summary

	def self.scrape_ala
		doc = Nokogiri::HTML(open("https://alistapart.com"))
		articles = []

		doc.search("section.main-content").each do |i|
			article = self.new
			article.title = i.search("article h2.entry-title").text.strip
			article.author = i.search("article p.entry-details span[itemprop='name']").text.strip
			article.date = i.search("time.pubdate").text.strip
			article.url = i.search("article h2.entry-title a").first.attr("href").strip
			article.summary = i.search("p.entry-summary").text.strip
			articles << article
		end
		articles
	end

end