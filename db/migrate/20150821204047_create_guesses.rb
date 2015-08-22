class CreateGuesses < ActiveRecord::Migration
  def change
	 	create_table :guesses do |t|
	  	t.string :user_answer, null: false
	  	t.boolean :correct?

	  	t.integer :card_id
	  	t.integer :game_id
	  	t.timestamps
	  end
  end
end
