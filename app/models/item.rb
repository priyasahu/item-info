class Item < ApplicationRecord
  belongs_to :item_category
  has_many :item_taxes, dependent: :destroy

  validates :name, :rate, presence: true

  def self.calculate_tax_and_subtotal(items)
    sub_total = items.inject(0) { |sum, x| sum+x.rate }.to_f
    tax_total = items.collect do |x| 
      rate  = x.rate

      tax_rate = rate*x.item_taxes.inject(0) { |sum, x| sum+x.tax_type } / 100
    end.sum

    {sub_total: sub_total, tax: tax_total.to_f}
  end
end
