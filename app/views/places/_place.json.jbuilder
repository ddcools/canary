json.extract! place, :id, :place_name, :type, :lat, :lng, :state, :created_at, :updated_at
json.url place_url(place, format: :json)