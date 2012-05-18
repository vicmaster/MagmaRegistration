class AddSystemToStudents < ActiveRecord::Migration
  def change
    add_column :students, :system_id, :integer

  end
end
