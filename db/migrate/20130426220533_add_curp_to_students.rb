class AddCurpToStudents < ActiveRecord::Migration
  def change
    add_column :students, :curp, :string
  end
end
