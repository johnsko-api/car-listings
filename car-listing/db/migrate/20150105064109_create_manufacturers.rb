class CreateManufacturers < ActiveRecord::Migration
  def change
    create_table :manufacturers do |t|
      t.string :name, null: false
      t.integer :year, null: false

      t.timestamps
    end
  end
end
