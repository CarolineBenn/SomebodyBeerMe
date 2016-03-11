class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  genderize
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :reviews, dependent: :restrict_with_exception
  has_many :pubs, through: :reviews

  validates_presence_of :photo
  before_validation :ensure_photo


  protected
    def ensure_photo
       if !self.photo   
        self.photo = "https://s-media-cache-ak0.pinimg.com/236x/5d/ef/d6/5defd68165e95f305299e49a77792866.jpg"
       end
    end

end
