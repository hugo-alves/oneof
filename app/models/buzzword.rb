class Buzzword < ActiveRecord::Base
	acts_as_votable
	belongs_to :user
	has_many :comments

	before_save :tileize_title
  	before_create :tileize_title

	def tileize_title
		self.title = self.title.titleize
	end


end
