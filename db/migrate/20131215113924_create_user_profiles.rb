class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.references :user, index: true
      t.string :twitter
      t.string :linkedin
      t.string :github
      t.string :startupcommunity
      t.string :google_plus
      t.text :bio
      t.string :title
      t.string :image

      t.timestamps
    end
  end
end
