class Scene < ActiveRecord::Base
  belongs_to :review
  belongs_to :scene_template
  has_many :video_files
end
