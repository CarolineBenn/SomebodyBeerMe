class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :beer
  belongs_to :pub

  validates :user, :beer, :pub, presence: true

  

end
