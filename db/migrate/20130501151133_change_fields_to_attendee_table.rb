class ChangeFieldsToAttendeeTable < ActiveRecord::Migration
  def change
    change_column :attendees, :carrier_id, :string
    rename_column :attendees, :carrier_id, :carrier
  end
end
