class AddForeignKeyForTags < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :tags, :images
    add_foreign_key :tags, :users
  end
end
