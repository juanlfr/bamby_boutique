class OrdersController < ApplicationController
before_action :authenticate_user!
before_action :secret, only: [:show]

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
    @order_items_array = Order.find(params[:id]).order_items
   
  

  end

  def new
    @order = Order.new
  end

  def create
  end

  private

  def secret
    @order = Order.find(params[:id])
    @user = User.find(@order.user_id)
     unless @user.id == current_user.id
      flash[:notice] = "Veuillez-vous connecter sur votre compte !"
      redirect_to new_user_session_path
       end
   end


end
