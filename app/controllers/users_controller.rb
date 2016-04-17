class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      #Usuario conseguiu criar a conta
    else
      #Usuario falhou ao criar conta
      render 'new'
    end
  end
end
