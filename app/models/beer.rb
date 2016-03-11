class Beer < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  # has_many :pubs, through: :reviews

  validates_presence_of :name, :photo, :percentage, :brewery, :category


  # Usage: b = Beer.find(1)
  # b.average_rating

  def average_rating
    (self.reviews.average(:rating) * 2).round / 2.0 
  end
end
