class SessionsController < ApplicationController

  def new
  end

  def create
    #user = User.find_by(id: params[:session][:id].downcase)
    #if user && user.authenticate(params[:session][:senha])
      #Login realizado com sucesso
    #else
      #Criar mensagem de erro
     # flash[:danger] = 'Combinação inválida de ID/Senha!'
      render 'new'
  end

  def destroy
  end
end
