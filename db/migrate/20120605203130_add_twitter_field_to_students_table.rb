class AddTwitterFieldToStudentsTable < ActiveRecord::Migration
  def change
    add_column :students, :twitter, :string
  end
end
