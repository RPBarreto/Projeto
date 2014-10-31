# encoding: UTF-8
require 'digest'
class LoginController < ApplicationController
  def index
  end

  def login
  	u = Usuario.find_by_username_and_password(params[:username],Digest::MD5.hexdigest(params[:password]))
  	if u.nil?
  		flash[:error] = 'Nome ou senha invalidos'
  		render :index
  	else
  		session[:usuario] = u.nome
  		redirect_to root_path, notice: 'Logado com sucesso'
  	end
  end

  def logout
  end
end
