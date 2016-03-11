class AddGooglePubsToPub < ActiveRecord::Migration
  def change
    add_column :pubs, :vicinity, :string
    add_column :pubs, :lat, :float
    add_column :pubs, :lng, :float
    add_column :pubs, :place_id, :string
    add_column :pubs, :google_id, :string
  end
end
