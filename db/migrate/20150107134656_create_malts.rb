class CreateMalts < ActiveRecord::Migration
  def change
    create_table :malts do |t|
      t.string :name
      t.integer :ebc
      t.integer :country_id

      t.timestamps
    end
  end
end
