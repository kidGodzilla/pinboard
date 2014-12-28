class AddUsersToSavedItems < ActiveRecord::Migration
  def change
    add_reference :saved_items, :user, index: true
  end
end
