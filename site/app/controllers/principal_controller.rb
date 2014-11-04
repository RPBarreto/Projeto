class PrincipalController < ApplicationController

	def index 
		@usuario = session[:usuario]
	end

	def logout
		session[:usuario] = nil
		redirect_to principal_path
	end

end
