class Category < ActiveRecord::Base
	#has_many :projects, dependent: :restrict_with_error
	has_many :divisions
end
