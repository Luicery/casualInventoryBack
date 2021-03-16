json.extract! company, :id, :email, :password_digest, :address, :created_at, :updated_at
json.url company_url(company, format: :json)
