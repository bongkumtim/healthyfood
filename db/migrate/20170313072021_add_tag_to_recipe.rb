class AddTagToRecipe < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :tag, :string
  end
end
