class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :number
      t.string :name
      t.float :unit_price
      t.string :image
      t.text :description
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
