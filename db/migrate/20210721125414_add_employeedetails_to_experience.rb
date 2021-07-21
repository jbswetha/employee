class AddEmployeedetailsToExperience < ActiveRecord::Migration[6.1]
  def change
    add_reference :experiences, :employeedetail, null: false, foreign_key: true
  end
end
