class CadastrosController < ApplicationController

	def index
		redirect_to action: 'new'
	end

	def new
		@cadastro = Cadastro.new
	end


end
