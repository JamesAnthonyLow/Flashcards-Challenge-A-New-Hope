class RemoveNullConstraintForUserAnswer < ActiveRecord::Migration
  def change
  	change_column :guesses, :user_answer, :string, :null => true
  end
end
