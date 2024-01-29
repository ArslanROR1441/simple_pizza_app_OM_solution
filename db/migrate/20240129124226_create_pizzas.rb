class CreatePizzas < ActiveRecord::Migration[7.1]
  def change
    create_table :pizzas do |t|
      t.string :name
      t.string :size
      t.float :base_price
      t.float :displayed_price
      t.integer :inches

      t.timestamps
    end
  end
end
