class CreateBids < ActiveRecord::Migration[5.0]
  def change
    create_table :bids do |t|
      t.integer :price

      t.timestamps
    end
    add_reference :bids, :model, index: true, foreign_key: true
    add_reference :bids, :item, index: true, foreign_key: true
  end
end
