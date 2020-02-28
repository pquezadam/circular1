class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  geocoded_by :address
    after_validation :geocode

  validates_presence_of :email, :address, :password, :password_confirmation
  validates_uniqueness_of :address
end
