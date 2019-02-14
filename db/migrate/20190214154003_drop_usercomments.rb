class DropUsercomments < ActiveRecord::Migration[5.2]
  def change
    drop_table :usercomments
  end
end
