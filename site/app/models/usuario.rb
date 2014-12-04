class Usuario < ActiveRecord::Base

	validates :nome, :username, :password, presence: true
	validates :username, length: {maximum: 16}
	validates :password, length: {maximum: 32}
	validates :username, length: {minimum: 3}
	validates :username, length: {maximum: 6}

	
end
