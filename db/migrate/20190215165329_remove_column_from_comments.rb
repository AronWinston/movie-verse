class RemoveColumnFromComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :movie_id
  end
end
