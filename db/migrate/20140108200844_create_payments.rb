class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.references :enrolment, index: true
      t.integer :payment_amount

      t.timestamps
    end
  end
end
