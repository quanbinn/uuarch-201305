class Step < ActiveRecord::Base
  belongs_to :task
  attr_accessible :description, :file_url, :image_url, :name
end
