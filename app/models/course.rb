class Course < ApplicationRecord
	has_many :teachments
	
	validates :course_num, presence: true, numericality: true
	validates :name, presence: true 

end
