json.extract! soiree, :id, :title, :date_event, :picture, :time_event, :price, :description, :created_at, :updated_at
json.url soiree_url(soiree, format: :json)