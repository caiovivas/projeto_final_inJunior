class SessionsController < ApplicationController

  def new
    if logged_in?
      redirect_to current_user
    end
  end

  def create
    user = User.find_by(matricula: params[:session][:matricula])
    if user && user.authenticate(params[:session][:senha])
      #Login realizado com sucesso
      flash[:success] = "Entrou"
      log_in user
      if user.pendente || user.inativo
        redirect_to root_url
        flash.now[:danger] = 'Conta em avaliação pendente/inativa'
      else
        redirect_to user
      end

    else
      #Criar mensagem de erro
      flash.now[:danger] = 'Combinação inválida de ID/Senha!'
      render 'new'
    end

  end

  def destroy
    log_out
    redirect_to root_url
  end

end
