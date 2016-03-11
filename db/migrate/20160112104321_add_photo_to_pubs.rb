class AddPhotoToPubs < ActiveRecord::Migration
  def change
    add_column :pubs, :photo, :string
  end
end
