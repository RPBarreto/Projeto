class CadastrosController < ApplicationController

	def index
		redirect_to action: 'new'
	end

	def new
		@cadastro = Usuario.new
	end

	def create
		#@cadastro = Cadastro.new(params.require(:cadastro).permit(:nome, :login, :senha))
		#@cadastro.save
		#redirect_to :login_index
		@cadastro = Usuario.new
		@cadastro.Nome = params[:nome]
		@cadastro.username = params[:login]
		@cadastro.senha = params[:senha]
		@cadastro.save
		puts 'aqui'
		puts 'cadastro realizado'
		redirect_to :login_index
	end


end
