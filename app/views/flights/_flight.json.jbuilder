json.extract! flight, :id, :number, :origin, :destination, :date, :created_at, :updated_at, :plane_id, :reservations
json.extract! flight.plane, :id, :name, :rows, :cols
# json.(flight, :id, :number, :origin, :destination, :date, :created_at, :updated_at, :plane_id, :reservations) json.(@flight.plane, :id, :name, :rows, :cols)
json.url flight_url(flight, format: :json)
