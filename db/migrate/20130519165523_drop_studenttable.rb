class DropStudenttable < ActiveRecord::Migration
  def up
  end

  def down
    drop_table :students
  end
end
