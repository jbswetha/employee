class CreateExperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :experiences do |t|
      t.string :title
      t.string :type
      t.string :company
      t.string :joblocation
      t.date :startdate
      t.date :enddate
      t.references :employeedetail, null: false, foreign_key: true

      t.timestamps
    end
  end
end
