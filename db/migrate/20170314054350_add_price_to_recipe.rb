class AddPriceToRecipe < ActiveRecord::Migration[5.0]
  def change
  	add_column :recipes, :price, :float
  end
end
