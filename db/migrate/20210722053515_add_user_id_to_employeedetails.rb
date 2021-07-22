class AddUserIdToEmployeedetails < ActiveRecord::Migration[6.1]
  def change
    add_column :employeedetails, :user_id, :integer
    add_index :employeedetails, :user_id
  end
end
