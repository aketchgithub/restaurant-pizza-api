class CreatePizzas < ActiveRecord::Migration[7.0]
  def change
    create_table :pizzas do |t|
      t.string :name
      t.string :ingredients
      t.float :price

      t.timestamps
    end
  end
end
