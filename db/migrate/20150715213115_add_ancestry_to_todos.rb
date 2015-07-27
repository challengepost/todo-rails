class AddAncestryToTodos < ActiveRecord::Migration
  def change
    add_column :todos, :ancestry, :string
  	add_index :todos, :ancestry
  end


end
