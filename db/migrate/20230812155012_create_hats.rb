class CreateHats < ActiveRecord::Migration[7.0]
  def change
    create_table :hats do |t|
      t.string :type
      t.string :color
      t.string :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
