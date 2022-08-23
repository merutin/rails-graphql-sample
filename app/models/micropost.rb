class Micropost < ApplicationRecord
	belongs_to :user
	has_many :micropost_details
end
