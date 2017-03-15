class RemoveProgrammeIdFromShow < ActiveRecord::Migration
  def change
    remove_column :shows, :programmeID
  end
end
