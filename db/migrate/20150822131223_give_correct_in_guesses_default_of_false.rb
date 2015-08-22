class GiveCorrectInGuessesDefaultOfFalse < ActiveRecord::Migration
  def change
  	change_column_default :guesses, :correct, false
  end
end
