class AddDescToDecks < ActiveRecord::Migration
  def change
    add_column :decks, :desc, :text
  end
end
