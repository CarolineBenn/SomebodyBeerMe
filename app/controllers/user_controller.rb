class UserController < ApplicationController
  def show
    @user = User.find(params[:id])
    c = User.find(params[:id])
    @user_reviews = c.reviews



  end

end
