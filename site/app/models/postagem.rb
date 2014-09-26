class Postagem < ActiveRecord::Base
	validates :text, :arquivos, :tipo presence: true
	validates :text, :arquivos, :tipo length: {minimum : 4}
end
