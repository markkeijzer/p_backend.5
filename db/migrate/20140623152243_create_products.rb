class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :brand, index: true
      t.string :name
      t.string :image_url

      t.timestamps
    end
  end
end
