class CadastrosController < ApplicationController

	def index
		redirect_to action: 'new'
	end

	def new
		@cadastro = Usuario.new
	end

	def create
		@cadastro = Usuario.new
		@cadastro.Nome = params[:nome]
		@cadastro.username = params[:login]
		@cadastro.senha = params[:senha]
		@cadastro.permissoes= "usuario"
		@cadastro.save()

		redirect_to :login
		p "testando"
		p Usuario.all
	end


end
