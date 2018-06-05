class Answer < ApplicationRecord
	validates :admin_id ,presence: true
	validates :inquiry_id ,presence: true
	validates :body ,presence: true
end
