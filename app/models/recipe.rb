class Recipe < ApplicationRecord
  belongs_to :user

  def public_recipes
    Recipe.order(created_at: :desc).where(public: true)
  end
end
