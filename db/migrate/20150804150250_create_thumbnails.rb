class CreateThumbnails < ActiveRecord::Migration
  def change
    create_table :thumbnails do |t|
      t.string :image_name
      t.string :path

      t.timestamps null: false
    end
  end
end
