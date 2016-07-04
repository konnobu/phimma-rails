class AddNameAndStudentNumberAndFacultyIdAndDepartmentIdAndAdmissionYearToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :student_number, :string
    add_column :users, :faculty_id, :integer
    add_column :users, :department_id, :integer
    add_column :users, :admission_year, :date
  end
end
