class TabelaController < ApplicationController

	def index	
	end

	def elemento
		#@curiosidade = Array.new 
		@elemento = Elemento.find_by nome: params['element']
		@massa = @elemento.num_protons + @elemento.num_neutrons

	#	@where = 'nome = '+params['element']
#		@join =  ' JOIN curiosidade ON elementos.id = curiosidades.elemento'
	#	@curiosidade= Curiosidade.joins(@join).where(@where).select('texto as field_one').first
	end
end
