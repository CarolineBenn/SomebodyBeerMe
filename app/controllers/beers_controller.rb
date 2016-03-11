class BeersController < ApplicationController
  def index
    @beers = Beer.all
  end

  def new
    @beer = Beer.new
    @categories = ["Bitter", "IPA", "Session IPA", "Brown Ale", "Porter/Stout", "Ale", "Belgian", "Lager", "Pilsner", "Kölsch", "Hefeweizen", "Other"]
  end

  def show
    @beer = Beer.find(params[:id])
    @reviews = @beer.reviews
    @review = Review.new
    session[:current_beer_id] = @beer.id
  end
 

  def create
    @beer = Beer.new(beer_params)
      if @beer.save

        @review = @beer.reviews.new(review_params)
        @review.user = current_user
        @review.pub_id = session[:current_pub_id]
        @review.save
        redirect_to @beer
      else
        redirect_to new_beer_path
      end
  end

  def search
    
    if params[:name_query]
      name_query = params[:name_query]
      # ILIKE like makes the query case insensitive
      @results = Beer.where("name ILIKE ?", "%#{name_query}%")
  
    end
  
    render
  end

  private
    def beer_params
      params.require(:beer).permit(:name, :percentage, :brewery, :photo, :category)  
    end



end
