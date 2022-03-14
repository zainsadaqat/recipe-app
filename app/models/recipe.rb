class Recipe < ApplicationRecord
  belongs_to :user
  has_many :foods_recipes, dependent: :delete_all
  has_many :foods, through: :foods_recipes

  def public_recipes
    Recipe.order(created_at: :desc).where(public: true)
  end

  def target_food(id)
    foods.find { |el| el.id == id }
  end

  def calculate_total
    total = 0
    foods_recipes.each do |el|
      total += target_food(el.food_id) ? target_food(el.food_id).price * el.quantity : 0
    end
    total
  end
end
