class AddImagePathToTodo < ActiveRecord::Migration
  def change
    add_column :todos, :image_path, :string
  end
end
