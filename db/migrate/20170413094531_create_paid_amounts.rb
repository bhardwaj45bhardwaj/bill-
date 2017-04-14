class CreatePaidAmounts < ActiveRecord::Migration[5.0]
  def change
    create_table :paid_amounts do |t|
      t.references :user, :bill_record, index: true
      t.decimal :amount
      t.timestamps
    end
  end
end
