json.extract! movie, :id, :name, :year, :description, :artists_id, :created_at, :updated_at
json.url movie_url(movie, format: :json)
