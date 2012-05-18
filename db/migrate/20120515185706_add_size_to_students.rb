class AddSizeToStudents < ActiveRecord::Migration
  def change
    add_column :students, :size_id, :integer

  end
end
