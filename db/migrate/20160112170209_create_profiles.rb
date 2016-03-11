class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :location
      t.attachment :profile_photo
      t.attachment :cover_photo

      t.timestamps null: false
    end
  end
end
