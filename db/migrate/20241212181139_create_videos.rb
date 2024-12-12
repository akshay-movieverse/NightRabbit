class CreateVideos < ActiveRecord::Migration[6.1]
  def change
    create_table :videos do |t|
      t.string :title
      t.text :image_url
      t.text :page_url
      t.integer :website_id
      t.json :metadata

      t.timestamps
    end

    add_index :videos, :title
  end
end
