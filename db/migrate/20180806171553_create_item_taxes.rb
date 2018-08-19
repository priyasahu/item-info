class CreateItemTaxes < ActiveRecord::Migration[5.1]
  def change
    create_table :item_taxes do |t|
      t.integer :tax_type
      t.references :item, foreign_key: true
      t.string :tax

      t.timestamps
    end
  end
end
