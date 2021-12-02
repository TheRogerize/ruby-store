json.extract! profile, :id, :age, :phone_number, :gender, :address_line_1, :address_line_2, :zip_code, :city, :country, :created_at, :updated_at
json.url profile_url(profile, format: :json)
