class RemoveChefFromOrder < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :user_id
    remove_column :orders, :restaurant_id
    remove_column :orders, :chef_id
  end
end
