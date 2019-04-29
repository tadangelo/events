class Event < ApplicationRecord

  has_many :rsvps
  has_many :favorites
  belongs_to :user
  # has_many :users, through: :rsvps
  # has_many :users, through: :favorites

  mount_uploader :image, EventUploader
  mount_uploader :thumb_image, EventUploader
end
