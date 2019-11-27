class OrdersController < ApplicationController
before_action :authenticate_user!

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def create
  	@order = Order.new
  	@order.user = current_user
  	@order.save
  	current_user.cart.line_items.each do |line_item|
  		order_items_transfer(line_item, @order)
  	end
  	redirect_to root_path

  end


 	private 

 	def order_items_transfer(line_item, current_order)		
 		line_order = OrderItem.new
 		line_order.order = current_order
 		line_order.item = line_item.item
 		line_order.quantity = line_item.quantity 
 		line_order.save
 		line_item.destroy
 	end

end
