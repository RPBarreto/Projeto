class TurmasController < ApplicationController

  def index
  	if !session[:admin].nil?
  		puts "logado como admin"
  	end
  	
  end

end

