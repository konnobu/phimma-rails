class Exhibit < ActiveRecord::Base
  belongs_to :user
  belongs_to :exhibit_category
  belongs_to :book_status
  belongs_to :exhibit_status

  mount_uploader :image, ImageUploader

  validates :user_id, presence: true
  validates :exhibit_category_id, presence: true
  validates :image, presence: true
  validates :title, presence: true, length: { maximum: 30 }
  validates :exhibit_description, presence: true, length: { maximum: 1000 }
  validates :price, presence: true
  validates :book_status_id, presence: true
  validates :exhibit_status_id, presence: true
end
