class Usuario < ActiveRecord::Base
	
	validates :nome, :username, :password, presence: true
	validates :username, length: {maximun: 16}
	validates :password, length: {maximun: 32}
	validates :username, length: {minimun: 6}
	validates :username, length: {maximun: 6}

	
end
