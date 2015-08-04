class Todo < ActiveRecord::Base
	belongs_to :thumbnail
  accepts_nested_attributes_for :thumbnail

end
