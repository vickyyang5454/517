class Feedback < ApplicationRecord
	belongs_to :teacher
	
	validates :teacher, presence: true
	validates :description, presence: true 

end
