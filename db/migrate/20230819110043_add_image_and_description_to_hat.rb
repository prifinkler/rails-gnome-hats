class AddImageAndDescriptionToHat < ActiveRecord::Migration[7.0]
  def change
    add_column :hats, :image_url, :string
    add_column :hats, :description, :string
  end
end
