class Student < ApplicationRecord
	belongs_to :contact	
	has_many :registered_courses
	has_many :saved_courses
	has_one :creditcard
	
	validates :contact, presence: true 
	validates :major, presence: true

end
