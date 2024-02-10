class AddForeignKeyConstraint < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :bookmarks, :movies, on_delete: :restrict
  end
end