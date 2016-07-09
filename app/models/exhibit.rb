class Exhibit < ActiveRecord::Base
  belongs_to :user
  belongs_to :exhibit_category
  belongs_to :book_status
  belongs_to :exhibit_status

  mount_uploader :image, ImageUploader
end
