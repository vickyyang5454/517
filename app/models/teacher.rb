class Teacher < ApplicationRecord
	belongs_to :contact
	has_many :teachments
	has_many :feedbacks
	
	validates :contact, presence: true
end
