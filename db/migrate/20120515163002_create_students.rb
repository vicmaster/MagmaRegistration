class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.integer :carrier_id
      t.integer :current_semester
      t.string :account_number
      t.integer :os_id
      t.integer :shirt_size_id

      t.timestamps
    end
  end
end
