class User < ApplicationRecord
	belongs_to :user, optional: true
	has_many :shifts
	has_many :items
end
