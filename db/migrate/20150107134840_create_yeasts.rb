class CreateYeasts < ActiveRecord::Migration
  def change
    create_table :yeasts do |t|
      t.string :name
      t.float :floc_rate
      t.integer :country_id

      t.timestamps
    end
  end
end
