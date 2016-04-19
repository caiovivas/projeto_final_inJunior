class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    if logged_in?
        if @user != @current_user
          redirect_to @current_user
        end
    else
        redirect_to (sessions_new_path)
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.update_attributes(:pendente => true, :inativo => false)
    if @user.save
      #Usuario conseguiu criar a conta
      log_in @user
      flash[:success] = "Bem vindo!"
      redirect_to @user
    else
      #Usuario falhou ao criar conta
      render 'new'
    end
  end

  private
    def user_params
      params.require(:user).permit(:nome, :cpf, :matricula, :email, :password, :password_confirmation)
    end
end
