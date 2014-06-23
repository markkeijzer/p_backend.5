class CreateReviewTemplatesUsers < ActiveRecord::Migration
  def change
    create_table :review_templates_users do |t|
      t.belongs_to :review_template, index: true
      t.belongs_to :user, index: true
    end
  end
end
