class RenameCorrectInGuesses < ActiveRecord::Migration
  def change
  	rename_column :guesses, :correct?, :correct
  end
end
