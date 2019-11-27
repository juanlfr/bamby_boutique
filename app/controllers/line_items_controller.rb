class LineItemsController < ApplicationController
before_action :authenticate_user!
before_action :secret

	def create
 	  chosen_item = Item.find(params[:id])
	 	@cart = current_user.cart

	 	#if item has already been added to the cart,increase the quantity of the dedicated item_line
	  if @cart.items.include?(chosen_item)
	    @line_item = @cart.line_items.find_by(:item_id => chosen_item)
	    @line_item.quantity += 1
	  #if item has not already been aded to the cart, create a new item_line
	  else
	    @line_item = LineItem.new
	    @line_item.cart = @cart
	    @line_item.item = chosen_item
	  end

	  @line_item.save
	  redirect_to cart_path(@cart.id)
	end

	def destroy
		@line_item_to_destroy = LineItem.find(params[:line_item_id])
		@line_item_to_destroy.destroy
		redirect_to cart_path(current_user.cart.id)
	end

end
