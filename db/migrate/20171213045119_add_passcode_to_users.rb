class AddPasscodeToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :passcode, :string
  end
end
