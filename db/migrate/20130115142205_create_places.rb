class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :website
      t.string :address
      t.integer :price
      t.integer :vat
      t.string :vat_number

      t.timestamps
    end
  end
end
