class AddRfcToStudents < ActiveRecord::Migration
  def change
    add_column :attendees, :rfc, :string
  end
end
