class CreateEmploymentTable < ActiveRecord::Migration
  def change
    create_table :employments do |t|
      t.string :name
    end
  end
end
