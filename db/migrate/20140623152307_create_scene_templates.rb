class CreateSceneTemplates < ActiveRecord::Migration
  def change
    create_table :scene_templates do |t|
      t.references :review_template, index: true
      t.string :name
      t.text :description
      t.integer :sort_order
      t.integer :max_length
      t.boolean :required
      t.string :image_url

      t.timestamps
    end
  end
end
