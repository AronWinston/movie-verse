class Comment < ApplicationRecord
    has_many :usercomments
    has_many :users, :through => :usercomments
end
