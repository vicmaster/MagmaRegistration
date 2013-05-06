class AddBirthDateToStudents < ActiveRecord::Migration
  def change
    add_column :attendees, :birth_date, :date
  end
end
