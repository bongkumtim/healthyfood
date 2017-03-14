class ChangePriceFormatInRecipe < ActiveRecord::Migration[5.0]
  def up
    change_column :recipes, :price, :integer
  end

  def down
    change_column :recipes, :price, :float
  end
end
