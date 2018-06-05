class Cart < ApplicationRecord
	validates :user_id ,presence: true
	validates :work_id ,presence: true
end
