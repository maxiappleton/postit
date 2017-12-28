class AddForeignKeyToPosts < ActiveRecord::Migration
  def change
    # can be accomplished with "add_foreign_key :posts, :users" in Rails 4.2+ ??
    # add_reference :posts, :users, index: true, foreign_key: true << didn't work??
    add_column :posts, :user_id, :integer
  end
end
