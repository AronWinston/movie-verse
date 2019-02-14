class CreateMoviesAssociations < ActiveRecord::Migration[5.2]
  def change
    create_table :movies_associations do |t|
      t.references :user_id
      t.integer :movie_id
      t.date :setdate
      t.timestamps
    end
  end
end
