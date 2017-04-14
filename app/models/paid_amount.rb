class PaidAmount < ApplicationRecord
  belongs_to :user
  belongs_to :bill_record
end
