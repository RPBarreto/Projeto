class PrincipalController < ApplicationController

	def index 
		@usuario = session[:usuario]
		@id = session[:id]
	end

	def logout
		session[:usuario] = nil
		redirect_to principal_path
	end

end
