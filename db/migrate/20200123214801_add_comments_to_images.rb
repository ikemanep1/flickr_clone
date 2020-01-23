class AddCommentsToImages < ActiveRecord::Migration[5.2]
  def change
      add_column(:images, :comment, :string)
  end
end
