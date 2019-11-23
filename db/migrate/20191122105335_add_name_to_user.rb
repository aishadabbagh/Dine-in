class AddNameToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :Name, :string 
    add_column :users,  :Phone_Number, :integer
    add_column :users,  :Role, :string
    add_column :users,  :Wallet, :integer
  end
end
