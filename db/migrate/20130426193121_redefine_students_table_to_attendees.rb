class RedefineStudentsTableToAttendees < ActiveRecord::Migration
  def change
    rename_table :students, :attendees
  end
end
