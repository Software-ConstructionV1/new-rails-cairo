class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :name
      t.date :date_of_birth
      t.string :email
      t.string :phone_number

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end
