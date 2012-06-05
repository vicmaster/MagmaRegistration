class AddPlaceFieldToStudentsTable < ActiveRecord::Migration
  def change
    add_column :students, :place, :string
  end
end
