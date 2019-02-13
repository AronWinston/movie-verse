class AddReftoAssociations < ActiveRecord::Migration[5.2]
  def change
    add_reference :movies_associations, :user, index: true
  end
end
