class AddColumnCreatorId < ActiveRecord::Migration
  def change
  	add_column :decks, :creator_id, :integer
  	add_index :decks, :creator_id 
  end
end
