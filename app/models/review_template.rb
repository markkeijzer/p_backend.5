class ReviewTemplate < ActiveRecord::Base
  belongs_to :product
  has_many :scene_templates
end
