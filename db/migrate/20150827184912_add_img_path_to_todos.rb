class AddImgPathToTodos < ActiveRecord::Migration
  def change
  	add_column :todos, :img_path, :string
  end
end
