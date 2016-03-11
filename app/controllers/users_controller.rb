class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = current_user    
    @gender = ["M", "F"]
  end

  def update
    @user = current_user
    # @user = User.find(params[:id])
 
    if @user.update(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end


  private
    def user_params
      params.require(:user).permit(:name, :location, :photo, :gender)  
    end


end
