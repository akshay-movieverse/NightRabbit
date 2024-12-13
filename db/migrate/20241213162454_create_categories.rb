class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :flag
      t.string :url
      t.integer :page
      t.string :status

      t.timestamps
    end
  end
end
