class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.string :lead
      t.text :intro
      t.text :description
      t.text :designed_for
      t.integer :price
      t.string :duration

      t.timestamps
    end
  end
end
