class PrincipalController < ApplicationController

	def index 
		@usuario = session[:user]
	end

end
