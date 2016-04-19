class MaterialsController < ApplicationController

  def show
    @material = Material.find(params[:id])
    if logged_in?
      if @current_user.nivel_conta > 1
        redirect_to @current_user
      end
    else
      redirect_to (sessions_new_path)
    end
  end

  def new
    @material = Material.new
  end

  def create
    @material = Material.new(mat_params)
    if @material.save
      #Usuario criou material
      render 'new'
    else
      #Usuario falhou ao criar material
      render 'new'
    end
  end

  private
  def mat_params
    params.require(:material).permit(:descricao, :tipo, :patrimonio)
  end
end
