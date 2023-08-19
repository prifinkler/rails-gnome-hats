class RemoveIsOwnerFromUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :is_owner, :boolean
  end
end
