class Event < ApplicationRecord
  mount_uploader :image, EventUploader
  mount_uploader :thumb_image, EventUploader
end
