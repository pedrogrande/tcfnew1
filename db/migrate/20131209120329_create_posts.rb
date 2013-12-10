class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :lead
      t.text :content
      t.string :image
      t.boolean :publish
      t.string :slug

      t.timestamps
    end
    add_index :posts, :slug, unique: true
  end
end
