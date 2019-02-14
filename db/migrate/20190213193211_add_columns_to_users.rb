class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :age, :integer
    add_column :users, :birthday, :date
    add_column :users, :favorite_movie, :string
    add_column :users, :favorite_actor, :string
    add_column :users, :favorite_genre, :string
  end
end
