class CreateUsers < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.string :username, null: false, limit: 64
  		t.string :avatar_src, null: false
  		t.string :password_hash
  		t.timestamps
  	end
  end
end
