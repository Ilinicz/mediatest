class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :body
      t.belongs_to :media_collection, index: true

      t.timestamps null: false
    end
    add_foreign_key :items, :media_collections
  end
end
