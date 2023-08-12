class ChangeDataTypeForPrice < ActiveRecord::Migration[7.0]
  def change
    change_column :hats, :price, :integer, using: 'price::integer'
  end
end
