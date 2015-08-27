class Todo < ActiveRecord::Base

  PATH="#{Rails.root}/public/todo_imgs"

  def img=(img)
    ext = File.extname(img.tempfile.path)
    path = File.join(PATH, "#{self.id}_img#{ext}")
    FileUtils.cp(img.tempfile.path, path)
    parts = path.split("/")
    path = "/#{parts[parts.length - 2, parts.length - 1].join("/")}"
    self.img_path = path
  end
end
