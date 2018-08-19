class ItemTax < ApplicationRecord
  belongs_to :item

  validates :tax_type, presence: true
end
