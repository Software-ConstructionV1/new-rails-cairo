class AddAddressToUser < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :address, :string, null: true, default: "Somewhere in the world"
  end
end
