class Food < ApplicationRecord
  belongs_to :user
  has_many :foods_recipes, dependent: :delete_all
  has_many :recipes, through: :foods_recipes
end
