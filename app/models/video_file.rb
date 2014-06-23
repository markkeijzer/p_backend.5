class VideoFile < ActiveRecord::Base
  belongs_to :review
  belongs_to :scene
end
