class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :post, index: true
      t.string :name
      t.string :email
      t.string :website
      t.text :content
      t.boolean :publish

      t.timestamps
    end
  end
end
