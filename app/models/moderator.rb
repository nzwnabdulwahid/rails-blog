class Moderator < ApplicationRecord
	has_secure_password

	has_many :posts

	validates :fullname, presence: true
	validates :username, presence: true, format: {with: /@/, message: "not valid"}
	
end
