class RemoveImageColumns < ActiveRecord::Migration[5.0]
  def up
    change_table :recipes do |t|
    	t.remove		:image
    	t.remove		:image_content_type
   		t.remove		:image_file_size
    	t.remove	:image_updated_at
    end
  end

  def down
    add_column :recipes do |t|
    	t.string		:image
    	t.string		:image_content_type
   		t.integer		:image_file_size
    	t.datetime	:image_updated_at
    end
  end
end
