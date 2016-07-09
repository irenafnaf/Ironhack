class RenameCommentCounterInConcerts < ActiveRecord::Migration
  def change
  	rename_column :concerts, :comments_counter, :comments_count
  end
end
