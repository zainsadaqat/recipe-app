class FoodsRecipe < ApplicationRecord
  # validation
  validates :quantity, presence: { message: 'Please specify quantity' }
  belongs_to :food
  belongs_to :recipe
end
