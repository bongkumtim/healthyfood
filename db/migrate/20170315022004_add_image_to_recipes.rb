class AddImageToRecipes < ActiveRecord::Migration[5.0]
  def up
    change_column :recipes, :image, :string
  end

  def down
    change_column :recipes, :image, :string
  end
end