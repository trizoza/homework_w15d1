class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :favourite_shows
  
  has_many :favourites, through: :favourite_shows, source: :show

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
