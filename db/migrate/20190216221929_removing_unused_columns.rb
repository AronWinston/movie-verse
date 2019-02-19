class RemovingUnusedColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :movie_id
    remove_column :movies, :comment_id
    
  end
end
