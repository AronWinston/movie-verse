class Usercomment < ApplicationRecord
  belongs_to :user
  belongs_to :comment
end
