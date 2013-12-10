class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :lead
      t.text :description
      t.date :date
      t.time :start_time
      t.time :finish_time
      t.boolean :publish
      t.boolean :recurring
      t.string :recurring_interval
      t.integer :recurring_number

      t.timestamps
    end
  end
end
