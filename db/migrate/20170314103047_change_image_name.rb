class ChangeImageName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :recipes, :image_file_name, :image
  end
end