class CreateSliders < ActiveRecord::Migration
  def change
    create_table :sliders do |t|
      t.string :title
      t.string :content
      t.string :image
      t.string :button_text
      t.string :button_url
      t.integer :priority

      t.timestamps
    end
  end
end
