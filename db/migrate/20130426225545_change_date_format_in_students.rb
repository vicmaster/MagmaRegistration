class ChangeDateFormatInStudents < ActiveRecord::Migration
  def up
   change_column :students, :birth_date, :datetime
  end

  def down
   change_column :students, :bith_date, :date
  end
end
