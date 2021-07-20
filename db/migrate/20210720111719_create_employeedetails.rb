class CreateEmployeedetails < ActiveRecord::Migration[6.1]
  def change
    create_table :employeedetails do |t|
      t.string :firstname
      t.string :lastname
      t.string :dob
      t.string :gender
      t.string :contact
      t.string :emal
      t.string :country
      t.string :location
      t.string :about
      t.string :industry
      t.string :skills
      t.string :currentposition

      t.timestamps
    end
  end
end
