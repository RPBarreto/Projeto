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
      if u.username == "admin"
        session[:admin] = u.username
        redirect_to principal_path, notice: 'Logado com sucesso admin'
      else
        session[:turma] = u.turma
    		session[:usuario] = u.nome
        session[:id] = u.id
    		redirect_to principal_path, notice: 'Logado com sucesso'
      end
  	end
  end

  def logout
    reset_session
    redirect_to '/'
  end
end
