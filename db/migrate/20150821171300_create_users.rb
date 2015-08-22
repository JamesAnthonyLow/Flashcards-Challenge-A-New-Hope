class CreateUsers < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.string :username, null: false, limit: 64
  		#guests get random usernames and passwords
  		t.string :password_hash
  		t.string :avatar_src, null: false
  		t.boolean :guest

  		t.timestamps
	 	end
  end
end
