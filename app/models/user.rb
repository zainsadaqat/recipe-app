class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :name, presence: { message: 'This field can not be blank' }
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  has_many :recipes, dependent: :delete_all
  has_many :foods, dependent: :delete_all
end
