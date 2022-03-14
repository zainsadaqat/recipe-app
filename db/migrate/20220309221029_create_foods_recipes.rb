class CreateFoodsRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :foods_recipes do |t|
      t.integer :food_id
      t.integer :recipe_id
      t.integer :quantity
      t.timestamps
    end
  end
end
