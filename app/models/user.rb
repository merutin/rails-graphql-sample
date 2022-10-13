class User < ApplicationRecord
	has_one :user_detail
	has_many :microposts
	has_one :user, through: :user_detail

	delegate :memo, to: :user_detail
	delegate :name, to: :user, prefix: true
	
end
