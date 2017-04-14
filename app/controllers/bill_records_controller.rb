class BillRecordsController < ApplicationController
  def new
    @bill_record = BillRecord.new
    @paid_amounts = @bill_record.paid_amounts.build
  end

  def create
    debugger
    @bill_record = BillRecord.create()
    @bill_record = @bill_record.paid_amounts.build(bill_record_params)
    @bill_record.save
  end

  private
    def bill_record_params
      params.require(:bill_record).permit(:location, :total_amount, :event_type, :event_date, paid_amounts_attributes: [:user_id])
    end
end



