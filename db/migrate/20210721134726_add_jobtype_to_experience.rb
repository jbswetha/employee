class AddJobtypeToExperience < ActiveRecord::Migration[6.1]
  def change
    add_column :experiences, :jobtype, :string
  end
end
