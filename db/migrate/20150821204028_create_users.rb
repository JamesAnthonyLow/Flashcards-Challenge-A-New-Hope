class CreateUsers < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.string :username, null: false, limit: 64
  		t.string :avatar_src, null: false
      #ZM: Add null: false for these two as well
  		t.string :password_hash
  		t.timestamps
  	end
  end
end
