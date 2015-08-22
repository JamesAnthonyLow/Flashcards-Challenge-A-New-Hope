class CreateDecks < ActiveRecord::Migration
  def change
  	create_table :decks do |t|
  		t.string :name, null: false, limit: 64
  		t.timestamps
  	end
  end
end
