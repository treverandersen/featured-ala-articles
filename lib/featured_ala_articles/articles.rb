class FeaturedAlaArticles::Articles
	attr_accessor :title, :date, :author, :url, :summary

	@@all = []

	def initialize
		@@all << self
	end

	def self.all 
		@@all
	end

end