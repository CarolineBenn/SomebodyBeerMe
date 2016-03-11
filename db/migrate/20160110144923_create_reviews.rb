class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :beer, index: true, foreign_key: true
      t.belongs_to :pub, index: true, foreign_key: true
      t.text :body
      t.integer :rating

      t.timestamps null: false
    end
  end
end
