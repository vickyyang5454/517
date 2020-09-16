class CourseOrder < ApplicationRecord
	belongs_to :student
	belongs_to :teacher
	
	validates :student, presence: true
	validates :teacher, presence: true
	validates :states, presence: true, inclusion: {  in:  %w(in_progress  Complete),
    	message: "%{value} is not a valid state" }
end
