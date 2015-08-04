class AddThumbIdToTodo < ActiveRecord::Migration
  def change
    add_column :todos, :thumbnail_id, :integer
  end
end
