class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.belongs_to :user, foreign_key: true, index: true
      t.string :name
      t.string :measurement_unit
      t.integer :price
      
      t.timestamps
    end
  end
end
