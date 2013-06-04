class AddEmploymentToAttendees < ActiveRecord::Migration
  def change
    add_column :attendees, :employment, :string
  end
end
