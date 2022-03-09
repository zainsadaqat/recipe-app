class Food < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :food_recipes
end
