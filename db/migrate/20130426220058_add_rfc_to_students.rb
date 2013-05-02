class AddRfcToStudents < ActiveRecord::Migration
  def change
    add_column :students, :rfc, :string
  end
end
