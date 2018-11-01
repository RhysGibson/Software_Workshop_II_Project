json.extract! clinic, :id, :latitude, :longitude, :name, :address, :doctors, :created_at, :updated_at
json.url clinic_url(clinic, format: :json)
