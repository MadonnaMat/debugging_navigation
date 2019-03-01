json.extract! rental, :id, :driver_id, :car_id, :start, :end, :end_by, :late_fee, :created_at, :updated_at
json.url rental_url(rental, format: :json)
