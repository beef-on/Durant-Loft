class User < ApplicationRecord
	belongs_to :user, optional: true
	has_many :shifts, optional: true
	has_many :items, optional: true
end
