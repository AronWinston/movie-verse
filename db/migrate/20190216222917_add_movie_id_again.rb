class AddMovieIdAgain < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :movie_id, :string
  end
end
