class Todo < ActiveRecord::Base

  PATH='#{Rails.root}/public/todo_imgs'

  def self.save_img_blob(blob)
    path = File.join(PATH, "#{self.id}_img")
    File.open(path, "w") do |file|
      file << blob
    end 
    path
  end
end
