class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :review_template
  has_many :video_files
end
