class AddMovieIdMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :movie_id, :string
    add_column :movies, :setdate, :date
  end
end
