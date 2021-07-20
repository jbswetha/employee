class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :firstname
      t.string :lastname
      t.string :dob
      t.string :gender
      t.string :phone
      t.string :email
      t.string :country
      t.string :location
      t.string :about
      t.string :currentposition
      t.string :skills
      t.string :industry

      t.timestamps
    end
  end
end
