class RemoveForeignKeyFromExperience < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :experiences, :employees
  end
end