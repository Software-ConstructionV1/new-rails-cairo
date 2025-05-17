class RenameDobToDateOfBirthInUsers < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :DOB, :date_of_birth
  end
end
