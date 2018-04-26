class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
	belongs_to :user, optional: true
	has_many :shifts
	has_many :items
<<<<<<< HEAD
	has_many :events
>>>>>>> b7db2a141a87ba7fc57f419134f7c5adcffa9ed8
end
