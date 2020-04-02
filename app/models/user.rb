class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :geo_marks, dependent: :destroy
  has_many :geo_marks_share, dependent: :destroy, :inverse_of =>  :user
end
