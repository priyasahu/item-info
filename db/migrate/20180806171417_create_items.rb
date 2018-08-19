class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :rate
      t.references :item_category, foreign_key: true

      t.timestamps
    end
  end
end
