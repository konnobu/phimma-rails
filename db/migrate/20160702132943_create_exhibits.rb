class CreateExhibits < ActiveRecord::Migration
  def change
    create_table :exhibits do |t|
      t.integer :user_id, :null => false
      t.integer :exhibit_category_id, :null => false
      t.string :image
      t.string :title, :null => false
      t.text :exhibit_description, :null => false
      t.integer :price, :null => false
      t.integer :book_status, :null => false
      t.integer :exhibit_status, :null => false

      t.timestamps null: false
    end
  end
end
