class ReviewsController < ApplicationController
  def new
    @review = Review.new()
  end

  def create
    @review = Review.new(review_params)
    # binding.pry
    @review.user = current_user
    
    @review.pub_id = session[:current_pub_id]
    # @review.beer_id = session[:current_beer_id]

    @review.save

    # Set user and pub
    if @review.save
      redirect_to beer_path(@review.beer_id)
    else
      redirect_to pubs_path
    end
  end


end

