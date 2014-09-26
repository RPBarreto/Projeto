class CadastrosController < ApplicationController

	def index
		redirect_to action: 'new'
	end

	def new
		@cadastro = Cadastro.new
	end

	def create
		@cadastro = Cadastro.new(params.require(:cadastro).permit(:nome, :login, :senha))
		@cadastro.save
		redirect_to :login_index
	end


end
