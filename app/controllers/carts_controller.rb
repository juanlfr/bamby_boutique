class CartsController < ApplicationController
before_action :authenticate_user!
before_action :secret

  def show
  	@cart = current_user.cart
  	@line_items = @cart.line_items
  end

  def secret
    @cart = Cart.find(params[:id])
    @user = User.find(@cart.user_id)
     unless @user.id == current_user.id
      flash[:notice] = "Vous n'avez pas les droits d'accès !"
      redirect_to root_path
       end
   end

end
