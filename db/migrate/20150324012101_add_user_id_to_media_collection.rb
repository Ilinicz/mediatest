class AddUserIdToMediaCollection < ActiveRecord::Migration
  def change
    add_column :media_collections, :user_id, :integer
  end
end
