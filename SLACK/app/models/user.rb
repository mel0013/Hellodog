class User < ApplicationRecord
  validates :first_name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, uniqueness: true
  validates :password, length: { minimum: 8 }

  acts_as_favoritor
  has_one :dog, dependent: :destroy
  has_many :chatrooms
  has_many :messages

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
