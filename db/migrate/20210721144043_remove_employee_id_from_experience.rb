class RemoveEmployeeIdFromExperience < ActiveRecord::Migration[6.1]
  def change
    remove_column :experiences, :employee_id, :integer
  end
end
