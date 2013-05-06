class AddCurpToStudents < ActiveRecord::Migration
  def change
    add_column :attendees, :curp, :string
  end
end
