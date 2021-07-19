json.extract! empdetail, :id, :first_name, :last_name, :email, :phone, :user_id, :company, :created_at, :updated_at
json.url empdetail_url(empdetail, format: :json)
