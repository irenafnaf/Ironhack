class AddUserIdToComics < ActiveRecord::Migration[5.0]
  def change
    add_reference :comics, :user, foreign_key: true # foreign_key of another model
    # add_column :comics, :user_id, :integer
  end
end
