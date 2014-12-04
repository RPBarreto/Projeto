class TabelaController < ApplicationController

	def index	
	end

	def elemento
		@curiosidade = Array.new 
		@elemento = Elemento.find_by nome: params['element']
		@massa = @elemento.num_protons + @elemento.num_neutrons
		@where = 'elementos.nome = '+params['element']
		@curiosidade= Curiosidade.joins(:elementos).where(@where)
	end
end
