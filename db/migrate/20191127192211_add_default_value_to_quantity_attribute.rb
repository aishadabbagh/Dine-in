class AddDefaultValueToQuantityAttribute < ActiveRecord::Migration[5.2]
  def change
    change_column_default :foods, :quantity, 0

  end
end
