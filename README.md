# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.column(:name, :string)
      t.column(:favorites, :boolean)
      t.timestamps()
    end
  end
end


class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.
      t.timestamps()
    end
  end
end

class AddUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.column :email, :string
      t.column :password_hash, :string
      t.column :password_salt, :string
      t.column :admin, :boolean
    end
  end
end

class AddForeignKeyForTags < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :tags, :images
  end
end
