class CreateScenes < ActiveRecord::Migration
  def change
    create_table :scenes do |t|
      t.references :review, index: true
      t.integer :sort_order
      t.integer :max_length
      t.string :name
      t.text :description
      t.references :scene_template, index: true

      t.timestamps
    end
  end
end
