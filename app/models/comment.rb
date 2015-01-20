class Comment < ActiveRecord::Base
	acts_as_voteable
	belongs_to :user
	belongs_to :buzzword
end
