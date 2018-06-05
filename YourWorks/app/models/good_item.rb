class GoodItem < ApplicationRecord
	validates :good_id ,presence: true
	validates :image_id ,presence: true
end
