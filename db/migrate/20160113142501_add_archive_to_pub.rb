class AddArchiveToPub < ActiveRecord::Migration
  def change
    add_column :pubs, :archive, :boolean, :default => false
  end
end
