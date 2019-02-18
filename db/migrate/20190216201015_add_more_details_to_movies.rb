class AddMoreDetailsToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :movietitle, :string
    add_column :movies, :movieposter, :string
  end
end
