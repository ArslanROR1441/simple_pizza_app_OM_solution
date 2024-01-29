class CreateLineItems < ActiveRecord::Migration[7.1]
  def change
    create_table :line_items do |t|
      t.belongs_to :pizza, null: false, foreign_key: true

      t.timestamps
    end
  end
end
