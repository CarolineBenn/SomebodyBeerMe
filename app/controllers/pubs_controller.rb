class PubsController < ApplicationController
  def index

    @pubs = Pub.limit(10)

  end

  def nearby
    if params[:lat]
      @client = GooglePlaces::Client.new(Rails.application.secrets.google_api)
      @spots = @client.spots(params[:lat], params[:lng], types: 'bar', radius: 200)
      
      # First Home:  51.5106945, -0.3158
      # Second Home: 51.52, -0.08
      # Steeple: 51.6930273,0.8025706


      # Add to Pub model if they dont already exist
      # place_id, vicinity, lat, lng, google_id, photo0_reference_key (.photos[0][photo_reference] 

      @spots.each do |s|
        save_pub = s.place_id
        Pub.find_or_create_by(place_id: save_pub) do |p|
          p.name = s.name
          p.vicinity = s.vicinity
          p.lat = s.lat
          p.lng = s.lng
          p.place_id = s.place_id 
          p.google_id = s.id
          if s.photos[0]
            p.photo = s.photos[0].fetch_url(400) 
          end
        end
      end
    end
  render 'index'
  end


  def show
    @pub = Pub.find(params[:id])
    session[:current_pub_id] = @pub.id
    @review = Review.new
    @user = User.all


    @top_drinkers = @pub.reviews.group(:user_id).order("count_all desc").count


  end

  def new
  ## Don't want users to be able to create their own pubs
  #  @pub = Pub.new
  redirect_to pubs_path
  end

  def create
    @pub = Pub.new(pub_params)
      if @pub.save
        redirect_to @pub
      else
        render 'pubs/new'
      end
  end

  private
    def pub_params
      params.require(:pub).permit(:name, :photo, :lat, :lng)
    end


end
