class Division < ActiveRecord::Base
	has_many :projects
	belongs_to :category
end
