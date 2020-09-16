class Creditcard < ApplicationRecord
	belongs_to :student

	
	validates :student, presence: true
	validates :name, presence: true 
	validates :card_num,
		presence: true,
		length: { is: 16,
		wrong_length: "%{count} digits is allowed"} 

	validates :experation_date, 
		presence: true
		format:  { with: /^(0?[1-9]|1[012])[\/\-]\d{2}$/,
		message: 'use mm\/yy only' }

	validates :cvv, 
		presence: true
		length: { is: 3,
		wrong_length: "%{count} digits is allowed"} 

end
