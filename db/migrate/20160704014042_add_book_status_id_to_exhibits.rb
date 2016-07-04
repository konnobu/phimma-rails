class AddBookStatusIdToExhibits < ActiveRecord::Migration
  def change
    add_reference :exhibits, :book_status, index: true, foreign_key: true
  end
end
