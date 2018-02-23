class Event < ApplicationRecord

	belongs_to :user
  has_many :favorites

  mount_uploader :image, EventUploader
  mount_uploader :thumb_image, EventUploader
end
