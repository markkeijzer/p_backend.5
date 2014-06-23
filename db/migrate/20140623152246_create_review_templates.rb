class CreateReviewTemplates < ActiveRecord::Migration
  def change
    create_table :review_templates do |t|
      t.string :title
      t.references :product, index: true
      t.boolean :custom_scenes_allowed

      t.timestamps
    end
  end
end
