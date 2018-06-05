class Good < ApplicationRecord
	validates :good_genre_id ,presence: true
	validates :user_id ,presence: true
	validates :title ,presence: true
	validates :explanation, presence:true
end
