class CreateExhibits < ActiveRecord::Migration
  def change
    create_table :exhibits do |t|
      t.integer :user_id
      t.integer :exhibit_category_id
      t.string :image
      t.string :title
      t.text :exhibit_description
      t.integer :price
      t.integer :book_status
      t.integer :exhibit_status
      t.references :user, index: true, foreign_key: true
      t.references :exhibit_category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
