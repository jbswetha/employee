json.extract! employeedetail, :id, :firstname, :lastname, :dob, :gender, :contact, :emal, :country, :location, :about, :industry, :skills, :currentposition, :user_id , :image
json.url employeedetail_url(employeedetail, format: :json)
