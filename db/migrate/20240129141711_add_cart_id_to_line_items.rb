class AddCartIdToLineItems < ActiveRecord::Migration[7.1]
  def up
    add_column :line_items, :cart_id, :integer
  end

  def down
    remove_column :line_items, :cart_id, :integer
  end
end
