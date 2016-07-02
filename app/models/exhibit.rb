class Exhibit < ActiveRecord::Base
  belongs_to :user
  belongs_to :exhibit_category
end
