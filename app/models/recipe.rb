class Recipe < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :food_recipes

  def public_recipes
    Recipe.order(created_at: :desc).where(public: true)
  end
end
