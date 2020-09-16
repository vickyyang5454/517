class ContactInfomation < ApplicationRecord
	has_one :admin
	has_one :teacher
	has_one :course

	validates :name, presence: true
	validates :email, presence: true
	validates :password, presence: true
	validates :phone_num, numericality: true

end
