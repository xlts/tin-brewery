class CreateHops < ActiveRecord::Migration
  def change
    create_table :hops do |t|
      t.string :name
      t.float :alpha_acids
      t.integer :country_id

      t.timestamps
    end
  end
end
