class AddPhotoUrlToTodos < ActiveRecord::Migration
  def change
    add_column :todos, :photo_url, :string
  end
end
