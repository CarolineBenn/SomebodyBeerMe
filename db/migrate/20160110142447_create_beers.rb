class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.float :percentage
      t.string :brewery
      t.string :photo
      t.string :category

      t.timestamps null: false
    end
  end
end