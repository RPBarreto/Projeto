class TabelaController < ApplicationController

	def index	
	end

	def elemento
		@elemento = Elemento.find_by nome: params['element']
		@massa = @elemento.num_protons + @elemento.num_neutrons
	end
end
