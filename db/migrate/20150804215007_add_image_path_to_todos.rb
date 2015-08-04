class AddImagePathToTodos < ActiveRecord::Migration
  def change
  	change_table :todos do |t|
  		t.string :image_path
  	end
  end
end
