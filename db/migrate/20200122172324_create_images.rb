class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.column(:name, :string)
      t.column(:favorites, :boolean)
      t.timestamps()
    end
  end
end
