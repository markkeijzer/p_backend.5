class SceneTemplate < ActiveRecord::Base
  belongs_to :review_template
  has_many :scenes
end
