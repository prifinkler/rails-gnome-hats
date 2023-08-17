class RenameTypleToStyleInHats < ActiveRecord::Migration[7.0]
  def change
    rename_column :hats, :type, :style
  end
end
