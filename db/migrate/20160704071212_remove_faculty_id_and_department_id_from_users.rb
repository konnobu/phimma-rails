class RemoveFacultyIdAndDepartmentIdFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :faculty_id, :integer
    remove_column :users, :department_id, :integer
  end
end
