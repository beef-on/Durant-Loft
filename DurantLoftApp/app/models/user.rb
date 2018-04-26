class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
	belongs_to :user, optional: true
	has_many :shifts
	has_many :items
	has_and_belongs_to_many :events
end
