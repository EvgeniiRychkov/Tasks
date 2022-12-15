class Task < ApplicationRecord
	has_many :execution_periods

	scope :finished,-> { where(finished: true) }	
	scope :unfinished,-> { where(finished: false) }	
end