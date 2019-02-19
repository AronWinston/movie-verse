class AddUseIdToMovies < ActiveRecord::Migration[5.2]
  def change
    add_reference :movies, :user, index: true
  end
end
