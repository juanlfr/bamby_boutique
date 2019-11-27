class UsersController < ApplicationController
before_action :authenticate_user!
before_action :secret

  def show
    @user = User.find(params[:id])
  end

  def secret
    @user = User.find(params[:id])
     unless @user.id == current_user.id
      flash[:notice] = "Vous n'avez pas les droits d'accès !"
      redirect_to root_path
       end
   end

end
