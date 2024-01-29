class AddStatusToOrders < ActiveRecord::Migration[7.1]
  def up
    add_column :orders, :status, :integer, default: 0
  end

  def down
    remove_column :orders, :status, :integer, default: 0
  end
end
