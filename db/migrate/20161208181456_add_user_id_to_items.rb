class AddUserIdToItems < ActiveRecord::Migration[5.0]
  def change
     add_reference :items, :model, index: true, foreign_key: true
  end
end
