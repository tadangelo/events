class Favorite < ApplicationRecord


  has_many :users, through: :events
  has_many :events

end
