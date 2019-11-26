class LineItemsController < ApplicationController

	def create
 	  chosen_item = Item.find(13)
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
	  redirect_to cart_path(@cart)
	end


end
