class Post < ApplicationRecord
	belongs_to :moderator
	has_many :comments
	has_many :tags, through: :post_tags
end
