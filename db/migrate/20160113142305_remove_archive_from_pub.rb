class RemoveArchiveFromPub < ActiveRecord::Migration
  def change
    remove_column :pubs, :archive, :boolean
  end
end
