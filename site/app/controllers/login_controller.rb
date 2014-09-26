class LoginController < ApplicationController

	def index
	end

	def logar
		@logins = Usuario.all
		@usuario = params[:login]
		@senha = params[:senha]

		@logins.each do | l|
			if (@usuario == l.username and @senha = l.senha)
				session[:usuario] = @usuario
				redirect_to :principal_index
			end
		end
	end
end
