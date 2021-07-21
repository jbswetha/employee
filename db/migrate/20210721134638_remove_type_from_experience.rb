class RemoveTypeFromExperience < ActiveRecord::Migration[6.1]
  def change
    remove_column :experiences, :type, :string
  end
end
