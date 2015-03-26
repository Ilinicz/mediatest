class AddSharedToMediaCollections < ActiveRecord::Migration
  def change
    add_column :media_collections, :shared, :boolean, default: false
  end
end
