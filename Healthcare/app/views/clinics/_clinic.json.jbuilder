json.extract! clinic, :id, :latitude, :longitude, :name, :address, :created_at, :updated_at
json.url clinic_url(clinic, format: :json)
