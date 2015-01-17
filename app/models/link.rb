class Link < ActiveRecord::Base
	belongs_to :buzzword
	belongs_to :user
end
