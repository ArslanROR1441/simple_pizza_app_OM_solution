json.extract! pizza, :id, :name, :size, :base_price, :displayed_price, :created_at, :updated_at
json.url pizza_url(pizza, format: :json)
