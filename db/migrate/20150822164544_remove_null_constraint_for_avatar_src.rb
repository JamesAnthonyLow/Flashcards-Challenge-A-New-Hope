class RemoveNullConstraintForAvatarSrc < ActiveRecord::Migration
  def change
  	change_column :users, :avatar_src, :string, :null => true
  end
end
