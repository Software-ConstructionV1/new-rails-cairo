class AddUniqueValidation < ActiveRecord::Migration[8.0]
  def change
    add_index :email, unique: true
  end
end
