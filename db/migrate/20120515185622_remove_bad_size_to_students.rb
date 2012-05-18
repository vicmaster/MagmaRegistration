class RemoveBadSizeToStudents < ActiveRecord::Migration
  def up
    remove_column :students, :shirt_size_id
      end

  def down
    add_column :students, :shirt_size_id, :integer
  end
end
