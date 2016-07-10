class RemoveBookStatusAndExhibitStatusFromExhibits < ActiveRecord::Migration
  def change
    remove_column :exhibits, :book_status, :integer
    remove_column :exhibits, :exhibit_status, :integer
  end
end
