class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.float :value
      t.date :order_date
      t.integer :beer_id
      t.integer :customer_id

      t.timestamps
    end
  end
end
