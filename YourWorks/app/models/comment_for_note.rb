class CommentForNote < ApplicationRecord
	validates :user_id ,presence: true
	validates :note_id ,presence: true
	validates :body ,presence: true
end
