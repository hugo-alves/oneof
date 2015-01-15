class Buzzword < ActiveRecord::Base
	belongs_to :user

	before_save :tileize_title
  	before_create :tileize_title

	def tileize_title
		self.title = self.title.titleize
	end


end
