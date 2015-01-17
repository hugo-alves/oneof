class Buzzword < ActiveRecord::Base
	acts_as_votable
	belongs_to :user
	has_many :comments, dependent: :destroy
	has_many :links, dependent: :destroy

	before_save :tileize_title_and_industry
  	before_create :tileize_title_and_industry

	def tileize_title_and_industry
		self.title = self.title.titleize
		self.industry = self.industry.titleize
	end


end
