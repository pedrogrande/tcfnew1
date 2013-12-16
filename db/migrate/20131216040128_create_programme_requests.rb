class CreateProgrammeRequests < ActiveRecord::Migration
  def change
    create_table :programme_requests do |t|
      t.string :name
      t.string :email
      t.boolean :follow_up

      t.timestamps
    end
  end
end
