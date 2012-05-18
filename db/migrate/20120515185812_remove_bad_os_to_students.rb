class RemoveBadOsToStudents < ActiveRecord::Migration
  def up
    remove_column :students, :os_id
      end

  def down
    add_column :students, :os_id, :integer
  end
end
