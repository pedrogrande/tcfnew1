class CreateStudentSites < ActiveRecord::Migration
  def change
    create_table :student_sites do |t|
      t.string :name
      t.string :url
      t.string :image
      t.string :screenshot

      t.timestamps
    end
  end
end
