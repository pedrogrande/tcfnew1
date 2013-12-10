class CreateIntakes < ActiveRecord::Migration
  def change
    create_table :intakes do |t|
      t.date :start_date
      t.date :end_date
      t.string :class_days
      t.time :start_time
      t.time :finish_time
      t.string :location
      t.text :notes
      t.references :course, index: true

      t.timestamps
    end
  end
end
