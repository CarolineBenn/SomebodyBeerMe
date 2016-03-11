class AddArchiveToPubs < ActiveRecord::Migration
  def change
    add_column :pubs, :archive, :boolean
  end
end
