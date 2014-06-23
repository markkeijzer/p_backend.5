class ReviewTemplate < ActiveRecord::Base
  belongs_to :product
  has_many :scene_templates
  has_many :reviews
  has_and_belongs_to_many :vouchers
  has_and_belongs_to_many :users
end
