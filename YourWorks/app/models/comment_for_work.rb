class CommentForWork < ApplicationRecord
	validates :user_id ,presence: true
	validates :work_id ,presence: true
	validates :body ,presence: true
end
