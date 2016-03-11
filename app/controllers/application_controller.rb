class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  private 

    def review_params
      params.require(:review).permit(:body, :rating, :beer_id)
    end

end
