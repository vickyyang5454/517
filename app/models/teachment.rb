class Teachment < ApplicationRecord
	belongs_to :course
	belongs_to :teacher
	
	validates :course, presence: true
	validates :teacher, presence: true 

end
