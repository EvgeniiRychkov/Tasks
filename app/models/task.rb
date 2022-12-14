class Task < ApplicationRecord
	scope :finished,-> { where(finished: true) }	
	scope :unfinished,-> { where(finished: false) }	
end