class BillRecord < ApplicationRecord
  has_many :paid_amounts, dependent: :destroy
  accepts_nested_attributes_for :paid_amounts
end
