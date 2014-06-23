class CreateVideoFiles < ActiveRecord::Migration
  def change
    create_table :video_files do |t|
      t.references :review, index: true
      t.references :scene, index: true
      t.string :file_path

      t.timestamps
    end
  end
end
