class AddDepartmentIdToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :department_id, :integer
    add_index :users, :department_id
  end
end
