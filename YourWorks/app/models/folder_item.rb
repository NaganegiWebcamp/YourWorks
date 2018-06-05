class FolderItem < ApplicationRecord
	validates :folder_id ,presence: true
	validates :work_id ,presence: true
end
