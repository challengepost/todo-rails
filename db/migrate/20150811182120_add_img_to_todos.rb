class AddImgToTodos < ActiveRecord::Migration
  def change
  	add_column :todos, :img, :string
  end
end
