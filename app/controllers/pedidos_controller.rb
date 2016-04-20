class PedidosController < ApplicationController
  include SessionsHelper
  def new
    @pedido = Pedido.new
  end

  def create
    @pedido = Pedido.new(params[:pedidos])
    puts ("TESTESTESTESTESTESTETESTESTESTESTESTESTETESTESTESTESTESTESTETESTESTESTESTESTESTETESTESTESTESTESTESTE")
    puts(params[:id_material])
    @pedido.update_attribute(:usuario, current_user.id)
    @pedido.update_attribute(:id_material, params[:id_material])
    if @pedido.save
      #
    else
      #
      render 'new'
    end
    render 'new'
  end

  def update

  end
end
