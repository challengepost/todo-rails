class AddImageUrlToToDo < ActiveRecord::Migration
  def up
    add_column :todos, :image_url, :string
  end

  def down
    remove_column :todos, :image_url
  end
end
