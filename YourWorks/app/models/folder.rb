class Folder < ApplicationRecord
	validates :user_id ,presence: true
	validates :title ,presence: true
end
