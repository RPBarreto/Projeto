class Resposta < ActiveRecord::Base
	validates :texto, presence: true
	validates :texto, length: {minimum : 5}
end