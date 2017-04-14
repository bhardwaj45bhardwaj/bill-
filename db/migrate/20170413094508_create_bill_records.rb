class CreateBillRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :bill_records do |t|
      t.string :location
      t.string :event_type
      t.date :event_date
      t.decimal :total_amount
      t.timestamps
    end
  end
end
