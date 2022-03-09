class CreateFoodRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :food_recipes do |t|
      t.belongs_to :food, foreign_key: true, index: true
      t.belongs_to :recipe, foreign_key: true, index: true
      t.integer :quantity
      t.timestamps
    end
  end
end
