class AddIndexToSavedItems < ActiveRecord::Migration
  def change
    add_column :saved_items, :idea_id, :integer
    add_index :saved_items, :idea_id
  end
end
