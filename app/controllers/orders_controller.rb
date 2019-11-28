class OrdersController < ApplicationController
before_action :authenticate_user!

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


end
