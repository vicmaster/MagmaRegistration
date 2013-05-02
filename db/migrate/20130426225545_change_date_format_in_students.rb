class ChangeDateFormatInStudents < ActiveRecord::Migration
  def up
   change_column :attendees, :birth_date, :datetime
  end

  def down
   change_column :attendees, :bith_date, :date
  end
end
