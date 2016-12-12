class AddExpireDateToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :expire_date, :datetime
  end
end
