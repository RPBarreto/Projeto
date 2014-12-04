class PrincipalController < ApplicationController

	def index 
		@usuario = session[:usuario]
		@id = session[:id]
	end

	def logout
		reset_session
		redirect_to principal_path
	end

end
