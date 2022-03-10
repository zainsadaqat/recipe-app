class Recipe < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :food_recipes

  def public_recipes
    Recipe.order(created_at: :desc).where(public: true)
  end

  def calculate_total
    total = 0
    food_recipes.each do |el|
      total += Food.find(el.food_id).price * el.quantity
    end
    total
  end
end
