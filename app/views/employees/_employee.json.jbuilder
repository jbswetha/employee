json.extract! employee, :id, :firstname, :lastname, :dob, :gender, :phone, :email, :country, :location, :about, :currentposition, :skills, :industry, :created_at, :updated_at
json.url employee_url(employee, format: :json)
