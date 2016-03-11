class Pub < ActiveRecord::Base
  has_many :reviews, dependent: :restrict_with_exception
  has_many :beers, through: :reviews


  validates_presence_of :name, :google_id, :photo
  before_validation :ensure_photo

  protected
  def ensure_photo
    self.photo ||= "http://www.suratthanitoday.com/wp-content/uploads/2012/09/image-placeholder-400x400.jpg"
    
  end
  
end
