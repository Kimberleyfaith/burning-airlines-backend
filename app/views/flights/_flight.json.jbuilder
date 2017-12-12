json.extract! flight, :id, :number, :origin, :destination, :date, :created_at, :updated_at, :plane_id
json.url flight_url(flight, format: :json)
