class Movie < ApplicationRecord
  searchkick
  has_many :users
  has_many :comments
end
