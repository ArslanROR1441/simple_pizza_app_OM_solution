class CreatePromotioncodes < ActiveRecord::Migration[7.1]
  def change
    create_table :promotioncodes do |t|
      t.string :name
      t.string :promo_code
      t.float :discount_percentage

      t.timestamps
    end
  end
end
