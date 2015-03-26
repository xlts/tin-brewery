class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.float :abv
      t.integer :malt_id
      t.integer :hop_id
      t.integer :yeast_id

      t.timestamps
    end
  end
end
