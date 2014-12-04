class NotasController < ApplicationController

  def index
  	if session[:id].nil?
  	redirect_to '/erro' 
  end
  end


end
