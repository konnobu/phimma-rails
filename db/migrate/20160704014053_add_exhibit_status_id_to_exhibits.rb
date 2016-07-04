class AddExhibitStatusIdToExhibits < ActiveRecord::Migration
  def change
    add_reference :exhibits, :exhibit_status, index: true, foreign_key: true
  end
end
