class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :review_template
end
