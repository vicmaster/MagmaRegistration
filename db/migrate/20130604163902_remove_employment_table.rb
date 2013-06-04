class RemoveEmploymentTable < ActiveRecord::Migration
  def up
  end

  def down
    drop_table :employments
  end
end
