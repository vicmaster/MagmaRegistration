class AddEnterpriseFieldToStudentsTable < ActiveRecord::Migration
  def change
    add_column :students, :enterprise, :string
  end
end
