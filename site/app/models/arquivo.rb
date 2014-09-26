class Arquivo < ActiveRecord::Base
	 validates :descricao, presence: true
	 validates :descricao, length: {minimum : 10}
end
