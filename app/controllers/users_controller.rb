class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    if logged_in?
        if @user != @current_user
          if @current_user.pendente == true
            redirect_to (sessions_new_path)
           if @current_user.inativo == false
             redirect_to (sessions_new_path)


end
          else
            flash = "You must be logged in"
            @tipouser = TipoUsuario.find(@current_user.nivel_conta)
            redirect_to @current_user
          end
        end
    else
        redirect_to (sessions_new_path)
    end
  end

  def new
    @user = User.new
  end

  def update
    @user = User.find params[:id]
    puts ("TESTETESTETESTETESTETESTETESTETESTETESTETESTE")
    puts (params[:user][:nivel_conta])
    if params[:user][:nivel_conta] == 0
      User.find params[:id].destroy
    else
      @user.update_attribute(:nivel_conta, params[:user][:nivel_conta])
      @user.update_attribute(:pendente, false)
    end

    redirect_to (administracao_aceitarusuario_path)
  end

  def create
    @user = User.new(user_params)
    @user.update_attributes(:pendente => true, :inativo => false)
    if @user.save
      #Usuario conseguiu criar a conta
      log_in @user
      flash[:success] = "Bem vindo!"
      redirect_to (sessions_new_path)
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
