class AddColumnDeckImg < ActiveRecord::Migration
  def change
  	add_column :decks, :deck_img, :string
  end
end
