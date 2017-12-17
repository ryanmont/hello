json.extract! greet, :id, :greeting, :created_at, :updated_at
json.url greet_url(greet, format: :json)
