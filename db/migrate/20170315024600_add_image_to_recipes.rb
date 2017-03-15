class AddImageToRecipes < ActiveRecord::Migration[5.0]
  def up
    add_column :recipes, :image, :string
  end

  def down
    remove_column :recipes, :image
  end
end