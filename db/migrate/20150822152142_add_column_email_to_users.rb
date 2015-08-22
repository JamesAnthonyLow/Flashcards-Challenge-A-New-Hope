class AddColumnEmailToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :email, :string, null: false, limit: 128
  end
end
